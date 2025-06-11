import os
import sys
import subprocess

# Get the screen name and package name from command line arguments
if len(sys.argv) < 2:
    print("Usage: python new_screen.py <screen_name>")
    sys.exit(1)

screen_name = sys.argv[1]
package_name = "flutter_starter_riverpod"
features_dir = "pages"

# Function that turns screen_name into ScreenName, removing dash and capitalizing the first letter of each word
def capitalize_screen_name(screen_name):
    return "".join([word.capitalize() for word in screen_name.split("_")])

screen_name_dart = capitalize_screen_name(screen_name)

screen_name_provider = screen_name_dart[0].lower() + screen_name_dart[1:]

# Define the directory structure and file content
dirs = {
    f"{screen_name}": {
        "screen": {
            f"{screen_name}.dart": f"""import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{package_name}/data/analytics/analytics_service.dart';
import 'package:{package_name}/{features_dir}/{screen_name}/viewmodel/{screen_name}_viewmodel.dart';

class {screen_name_dart} extends ConsumerStatefulWidget {{
  const {screen_name_dart}({{super.key}});

  @override
  ConsumerState<{screen_name_dart}> createState() => _{screen_name_dart}ScreenState();
}}

class _{screen_name_dart}ScreenState extends ConsumerState<{screen_name_dart}> {{
  @override
  void initState() {{
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {{
      ref.read(analyticsServiceProvider).logScreenVisit('{screen_name}');
    }});
  }}
  
  @override
  Widget build(BuildContext context) {{
    final vm = ref.watch({screen_name_provider}ViewmodelProvider.notifier);

    return Container();
  }}
}}
"""
        },
        "viewmodel": {
            f"{screen_name}_viewmodel.dart": f"""import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{package_name}/core/state/view_state.dart';
import 'package:{package_name}/{features_dir}/{screen_name}/viewmodel/{screen_name}_state.dart';

final {screen_name_provider}ViewmodelProvider =
    StateNotifierProvider.autoDispose<{screen_name_dart}Viewmodel, {screen_name_dart}State>(
  (ref) => {screen_name_dart}Viewmodel(),
);

class {screen_name_dart}Viewmodel extends StateNotifier<{screen_name_dart}State> {{
  {screen_name_dart}Viewmodel()
      : super(
          const {screen_name_dart}State(
            viewState: ViewStateIdle(),
          ),
        );
}}
""",
            f"{screen_name}_state.dart": f"""import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{package_name}/core/state/view_state.dart';

part '{screen_name}_state.freezed.dart';

@freezed
abstract class {screen_name_dart}State with _${screen_name_dart}State {{
  const factory {screen_name_dart}State({{
    required ViewState viewState,
  }}) = _{screen_name_dart}State;
}}
"""
        }
    }
}

# Function to create directories and files
def create_dirs_and_files(base, dirs):
    for dir, subdirs in dirs.items():
        dir_path = os.path.join(base, dir)
        os.makedirs(dir_path, exist_ok=True)
        for subdir, files in subdirs.items():
            subdir_path = os.path.join(dir_path, subdir)
            os.makedirs(subdir_path, exist_ok=True)
            for file, content in files.items():
                file_path = os.path.join(subdir_path, file)
                with open(file_path, 'w') as f:
                    f.write(content)

# Create the directories and files
create_dirs_and_files(f"./lib/{features_dir}", dirs)
subprocess.run("dart run build_runner build --delete-conflicting-outputs",  shell=True, executable="/bin/zsh")
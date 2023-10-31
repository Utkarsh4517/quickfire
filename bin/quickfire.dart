import 'package:args/command_runner.dart';
import 'package:quickfire/commands/create_project.dart';


Future<void> main(List<String> args) async {
  final CommandRunner<void> runner =
      CommandRunner<void>('quickfire', 'Flutter on steroids')
        ..addCommand(CreateProject());

  try {
    await runner.run(args);
  } catch (e) {
    print('Error: $e');
  }
}

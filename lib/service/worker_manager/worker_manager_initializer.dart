import 'package:worker_manager/worker_manager.dart';
import 'package:yx_scope/yx_scope.dart';

class WorkerManagerInitializer implements AsyncLifecycle {
  @override
  Future<void> dispose() async {
    await workerManager.dispose();
  }

  @override
  Future<void> init() async {
    await workerManager.init();
  }
}

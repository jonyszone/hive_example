import 'package:hive/hive.dart';
import 'task.dart';

class TaskService {
  final Box<Task> _taskBox = Hive.box<Task>('tasks');

  List<Task> getAllTasks() {
    return _taskBox.values.toList();
  }

  void addTask(Task task) {
    _taskBox.put(task.id, task);
  }

  void updateTask(Task task) {
    _taskBox.put(task.id, task);
  }

  void deleteTask(String id) {
    _taskBox.delete(id);
  }
}

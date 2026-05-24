import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _myTasks = prefs
              .getStringList('ff_myTasks')
              ?.map((x) {
                try {
                  return TaskTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _myTasks;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<TaskTypeStruct> _tasklist = [];
  List<TaskTypeStruct> get tasklist => _tasklist;
  set tasklist(List<TaskTypeStruct> value) {
    _tasklist = value;
  }

  void addToTasklist(TaskTypeStruct value) {
    tasklist.add(value);
  }

  void removeFromTasklist(TaskTypeStruct value) {
    tasklist.remove(value);
  }

  void removeAtIndexFromTasklist(int index) {
    tasklist.removeAt(index);
  }

  void updateTasklistAtIndex(
    int index,
    TaskTypeStruct Function(TaskTypeStruct) updateFn,
  ) {
    tasklist[index] = updateFn(_tasklist[index]);
  }

  void insertAtIndexInTasklist(int index, TaskTypeStruct value) {
    tasklist.insert(index, value);
  }

  List<TaskTypeStruct> _myTasks = [];
  List<TaskTypeStruct> get myTasks => _myTasks;
  set myTasks(List<TaskTypeStruct> value) {
    _myTasks = value;
    prefs.setStringList('ff_myTasks', value.map((x) => x.serialize()).toList());
  }

  void addToMyTasks(TaskTypeStruct value) {
    myTasks.add(value);
    prefs.setStringList(
        'ff_myTasks', _myTasks.map((x) => x.serialize()).toList());
  }

  void removeFromMyTasks(TaskTypeStruct value) {
    myTasks.remove(value);
    prefs.setStringList(
        'ff_myTasks', _myTasks.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMyTasks(int index) {
    myTasks.removeAt(index);
    prefs.setStringList(
        'ff_myTasks', _myTasks.map((x) => x.serialize()).toList());
  }

  void updateMyTasksAtIndex(
    int index,
    TaskTypeStruct Function(TaskTypeStruct) updateFn,
  ) {
    myTasks[index] = updateFn(_myTasks[index]);
    prefs.setStringList(
        'ff_myTasks', _myTasks.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMyTasks(int index, TaskTypeStruct value) {
    myTasks.insert(index, value);
    prefs.setStringList(
        'ff_myTasks', _myTasks.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

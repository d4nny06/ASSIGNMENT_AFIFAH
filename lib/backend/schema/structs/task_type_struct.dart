// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskTypeStruct extends BaseStruct {
  TaskTypeStruct({
    String? title,
    String? description,
    DateTime? duedate,
    String? status,
  })  : _title = title,
        _description = description,
        _duedate = duedate,
        _status = status;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "duedate" field.
  DateTime? _duedate;
  DateTime? get duedate => _duedate;
  set duedate(DateTime? val) => _duedate = val;

  bool hasDuedate() => _duedate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static TaskTypeStruct fromMap(Map<String, dynamic> data) => TaskTypeStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        duedate: data['duedate'] as DateTime?,
        status: data['status'] as String?,
      );

  static TaskTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? TaskTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'duedate': _duedate,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'duedate': serializeParam(
          _duedate,
          ParamType.DateTime,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static TaskTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TaskTypeStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        duedate: deserializeParam(
          data['duedate'],
          ParamType.DateTime,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TaskTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TaskTypeStruct &&
        title == other.title &&
        description == other.description &&
        duedate == other.duedate &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, description, duedate, status]);
}

TaskTypeStruct createTaskTypeStruct({
  String? title,
  String? description,
  DateTime? duedate,
  String? status,
}) =>
    TaskTypeStruct(
      title: title,
      description: description,
      duedate: duedate,
      status: status,
    );

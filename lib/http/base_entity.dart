import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class BaseEntity<T>{
  String msg;
  String state;
  T data;

  BaseEntity(
      {this.msg,
        this.state,
        this.data});

  BaseEntity.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    msg = json['msg'];
    state = json['state'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['state'] = this.state;
    data['data'] = this.data;
    return data;
  }
}
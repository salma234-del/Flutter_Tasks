import 'package:flutter/material.dart';

class ChatModel {
  final String imageLink;
  final String name;
  final String message;
  final String time;
  final Color status;
  ChatModel({
    required this.imageLink,
    required this.message,
    required this.name,
    required this.time,
    required this.status,
  });
}

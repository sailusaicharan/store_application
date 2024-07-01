import 'package:flutter/material.dart';

class NotificationModel extends ChangeNotifier {
  int _notificationCount = 0;

  int get notificationCount => _notificationCount;

  void incrementNotificationCount() {
    _notificationCount++;
    notifyListeners();
  }
}

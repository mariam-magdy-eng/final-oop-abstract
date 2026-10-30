class NotificationService {
  void sendNotification() {
    print('Sending a general notification...');
  }
}

class EmailNotification extends NotificationService {
  @override
  void sendNotification() {
    // TODO: implement sendNotification
    print('📧 Sending Email notification to user inbox...');
  }
}

class SmsNotification extends NotificationService {
  @override
  void sendNotification() {
    // TODO: implement sendNotification
    print('📱 Sending SMS text message to mobile number...');
  }
}

class PushNotification extends NotificationService {
  @override
  void sendNotification() {
    // TODO: implement sendNotification
    print('🔔 Sending Push notification to smartphone screen...');
  }
}

void main() {
  List<NotificationService> notifications = [
    EmailNotification(),
    SmsNotification(),
    PushNotification(),
  ];
  print('--- Processing All Notifications ---');
  for (NotificationService notification in notifications) {
    notification.sendNotification();
  }
}

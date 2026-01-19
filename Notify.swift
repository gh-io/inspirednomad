import UserNotifications

class NotificationService {
    static func requestPermission() {
        UNUserNotificationCenter.current().requestAuthorization(
            options: [.alert, .sound, .badge]
        ) { granted, _ in
            print("🔔 Permission:", granted)
        }
    }
}

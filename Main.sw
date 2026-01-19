import SwiftUI

@main
struct App: SwiftUI.App {

    // Connects UIKit lifecycle (Firebase, Push, Crashlytics)
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

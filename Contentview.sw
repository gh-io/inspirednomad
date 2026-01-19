import SwiftUI

struct ContentView: View {

    @StateObject var auth = AuthViewModel()

    var body: some View {
        VStack(spacing: 20) {

            if let user = auth.user {
                Text("✅ Logged In")
                Text(user.uid).font(.caption)

                Button("Sign Out") {
                    auth.signOut()
                }
            } else {
                Text("InspiredNomad")
                    .font(.largeTitle)
                    .bold()

                Button("Login (Anonymous)") {
                    auth.signInAnonymous()
                }
            }
        }
        .onAppear {
            NotificationService.requestPermission()
        }
        .padding()
    }
}

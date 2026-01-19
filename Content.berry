import SwiftUI

struct ContentView: View {

    @StateObject private var authVM = AuthViewModel()

    var body: some View {
        VStack(spacing: 24) {

            if let user = authVM.user {
                Text("🔥 Logged In")
                    .font(.largeTitle)

                Text("UID:")
                Text(user.uid)
                    .font(.caption)
                    .foregroundColor(.gray)

                Button("Sign Out") {
                    authVM.signOut()
                }
            } else {
                Text("InspiredNomad")
                    .font(.largeTitle)
                    .bold()

                Button("Sign In Anonymously") {
                    authVM.signInAnonymously()
                }
            }
        }
        .padding()
    }
}

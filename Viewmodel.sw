import Foundation
import FirebaseAuth

class AuthViewModel: ObservableObject {

    @Published var user: User?

    init() {
        self.user = Auth.auth().currentUser
    }

    func signInAnonymously() {
        Auth.auth().signInAnonymously { result, error in
            if let error = error {
                print("❌ Auth error:", error.localizedDescription)
                return
            }
            self.user = result?.user
            print("✅ Signed in:", self.user?.uid ?? "")
        }
    }

    func signOut() {
        try? Auth.auth().signOut()
        self.user = nil
        print("👋 Signed out")
    }
}

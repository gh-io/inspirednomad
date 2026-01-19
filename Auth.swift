import GoogleSignIn
import FirebaseAuth

func signInWithGoogle() {
    guard let rootVC = UIApplication.shared.windows.first?.rootViewController else { return }

    GIDSignIn.sharedInstance.signIn(withPresenting: rootVC) { result, error in
        if let error = error {
            print(error.localizedDescription)
            return
        }

        guard let idToken = result?.user.idToken?.tokenString,
              let accessToken = result?.user.accessToken.tokenString else { return }

        let credential = GoogleAuthProvider.credential(
            withIDToken: idToken,
            accessToken: accessToken
        )

        Auth.auth().signIn(with: credential) { res, err in
            if err == nil {
                self.user = res?.user
            }
        }
    }
}

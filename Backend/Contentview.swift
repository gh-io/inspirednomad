VStack(spacing: 16) {
    Button("Login Anon") { auth.signInAnonymous() }
    Button("Login Google") { auth.signInWithGoogle() }
    Button("Login Apple") { auth.signInWithApple() }
    Button("Buy Pro") {
        Task { await IAPService.shared.purchase(productID: "pro_upgrade") }
    }
}

import FirebaseFirestore

class FirestoreService {

    private let db = Firestore.firestore()

    func createUser(uid: String) {
        db.collection("users").document(uid).setData([
            "createdAt": Timestamp(),
            "platform": "iOS"
        ])
    }
}

import FirebaseRemoteConfig

class RemoteConfigService {

    static let shared = RemoteConfigService()
    private let rc = RemoteConfig.remoteConfig()

    init() {
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        rc.configSettings = settings
        rc.setDefaults(["welcome_text": "Welcome!" as NSObject])
    }

    func fetch(completion: @escaping (String) -> Void) {
        rc.fetchAndActivate { _, _ in
            completion(self.rc["welcome_text"].stringValue ?? "")
        }
    }
}

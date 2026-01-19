func askAI(prompt: String) async -> String {
    let url = URL(string: "https://your-api.com/ai")!
    var req = URLRequest(url: url)
    req.httpMethod = "POST"
    req.httpBody = try? JSONEncoder().encode(["text": prompt])
    req.setValue("application/json", forHTTPHeaderField: "Content-Type")

    let (data, _) = try! await URLSession.shared.data(for: req)
    return String(data: data, encoding: .utf8) ?? ""
}

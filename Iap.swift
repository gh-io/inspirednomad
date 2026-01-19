import StoreKit

class IAPService {

    static let shared = IAPService()

    func purchase(productID: String) async {
        let products = try? await Product.products(for: [productID])
        guard let product = products?.first else { return }

        let result = try? await product.purchase()
        if case .success = result {
            print("💰 Purchase successful")
        }
    }
}

import Foundation
import StoreKit

@objc public class CapacitorStoreCountry: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(SKPaymentQueue.default().storefront?.countryCode)
        return SKPaymentQueue.default().storefront?.countryCode
    }
}

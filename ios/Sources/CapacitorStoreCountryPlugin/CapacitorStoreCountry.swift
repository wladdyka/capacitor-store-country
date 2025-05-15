import Foundation
import StoreKit

@objc public class CapacitorStoreCountry: NSObject, SKPaymentTransactionObserver {
  public func paymentQueue(
    _ queue: SKPaymentQueue,
    updatedTransactions transactions: [SKPaymentTransaction]
  ) {

  }

    private var countryCallback: ((String) -> Void)?

    // Add observer and handle callback
    @objc public func getCountryCode(_ callback: @escaping (String) -> Void) {
        self.countryCallback = callback
        SKPaymentQueue.default().add(self)

        // Try to read immediately if available
        if let storefront = SKPaymentQueue.default().storefront {
            callback(storefront.countryCode)
            SKPaymentQueue.default().remove(self)
        }
        // Else wait for paymentQueueDidChangeStorefront
    }

    public func paymentQueueDidChangeStorefront(_ queue: SKPaymentQueue) {
        if let storefront = queue.storefront {
            countryCallback?(storefront.countryCode)
        } else {
            countryCallback?("NIL")
        }
        countryCallback = nil
        SKPaymentQueue.default().remove(self)
    }
}

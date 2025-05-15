import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorStoreCountryPlugin)
public class CapacitorStoreCountryPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "CapacitorStoreCountryPlugin"
    public let jsName = "CapacitorStoreCountry"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getAppStoreCountry", returnType: CAPPluginReturnPromise)
    ]

    private let implementation = CapacitorStoreCountry()

    @objc func getAppStoreCountry(_ call: CAPPluginCall) {
        implementation.getCountryCode { country in
            call.resolve([
                "country": country
            ])
        }
    }
}

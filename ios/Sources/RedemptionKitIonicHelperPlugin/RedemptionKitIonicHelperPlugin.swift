import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(RedemptionKitIonicHelperPlugin)
public class RedemptionKitIonicHelperPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "RedemptionKitIonicHelperPlugin"
    public let jsName = "RedemptionKitIonicHelper"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = RedemptionKitIonicHelper()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}

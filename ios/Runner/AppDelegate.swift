import UIKit
import Flutter
import WatchConnectivity

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, WCSessionDelegate {
    var session: WCSession?
    var channel: FlutterMethodChannel?
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) { }
    
    func sessionDidBecomeInactive(_ session: WCSession) { }
    
    func sessionDidDeactivate(_ session: WCSession) { }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("ios session call")
        print(message)
        if channel == nil {
            print("nill channel")
            return;
        }
        DispatchQueue.main.async {
            print("send to fluter channel")
            self.channel!.invokeMethod("counter", arguments: message)
        }
    }
    
    func sendString(text: String) -> Bool {
        print("ios send", text)
        if session == nil {
            print("No session…")
            return false;
        }
        if(!session!.isPaired || !session!.isReachable){
            print("Watch not reachable…")
            return false;
        }
        DispatchQueue.main.async { // Send the message asynchronously
            print("Sending counter…")
            self.session!.sendMessage(["counter": text], replyHandler: nil)
        }
        
        return true;
    }
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        initFlutterChannel()
        if WCSession.isSupported() {
            session = WCSession.default;
            session?.delegate = self;
            session?.activate();
        }
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    private func initFlutterChannel() {
        let controller = window?.rootViewController as? FlutterViewController
        if controller == nil {
            return
        }
        channel = FlutterMethodChannel(
            name: "com.doozyx.teamscore-ios-channel",
            binaryMessenger: controller!.binaryMessenger)
        
        channel!.setMethodCallHandler({ [weak self] (
            call: FlutterMethodCall,
            result: @escaping FlutterResult) -> Void in
            switch call.method {
            case "sendDataToNative":
                let ok = self?.sendString(text: call.arguments as! String)
                result(ok);
                //                guard let watchSession = self?.session, watchSession.isPaired,
                //                      watchSession.isReachable, let methodData = call.arguments as? [String: Any],
                //                      let method = methodData["method"], let data = methodData["data"] as? Any else {
                //                    result(false)
                //                    return
                //                }
                //
                //                let watchData: [String: Any] = ["method": method, "data": data]
                //                watchSession.sendMessage(watchData, replyHandler: nil, errorHandler: nil)
                //                result(true)
            default:
                result(FlutterMethodNotImplemented)
            }
        })
        
    }
}

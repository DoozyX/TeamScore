import UIKit
import Flutter
import WatchConnectivity

extension FlutterError: Error {}

class TeamScoreHostApiImplementation : TeamScoreHostApi {
    var session: WCSession?
    
    init(session: WCSession?) {
        self.session = session;
    }

    func sendScore(message: MessageData, completion: @escaping (Result<Void, Error>) -> Void) {
        print("[iOS] send to watch", message);
        if session == nil {
            print("[iOS] No session…");
            completion(.failure(FlutterError()));
            return;
        }
        if(!session!.isPaired || !session!.isReachable){
            print("[iOS] Watch not reachable…");
            completion(.failure(FlutterError()));
            return;
        }
        DispatchQueue.main.async { // Send the message asynchronously
            print("[iOS] Sending counter…");
            self.session!.sendMessage(["team1Score": message.team1Score, "team2Score": message.team2Score], replyHandler: nil);
            completion(.success(Void()));
        }
    }
}

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, WCSessionDelegate {
    var session: WCSession?
    var hostApi: TeamScoreHostApiImplementation?
    var flutterApi: TeamScoreFlutterApi?
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) { }
    
    func sessionDidBecomeInactive(_ session: WCSession) { }
    
    func sessionDidDeactivate(_ session: WCSession) { }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("[iOS] session call", message)
        let score1 = message["team1Score"] as! Int;
        let score2 = message["team2Score"] as! Int;
        DispatchQueue.main.async { // Send the message asynchronously
            self.flutterApi?.sendScore(data: MessageData(team1Score: Int64(score1), team2Score: Int64(score2)),
                                       completion:  {})
        }
    }

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        if WCSession.isSupported() {
            session = WCSession.default;
            session?.delegate = self;
            session?.activate();
        }
        initFlutterChannel()
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    private func initFlutterChannel() {
        let controller = window?.rootViewController as? FlutterViewController
        if controller == nil {
            return
        }
        let binaryMessenger = controller!.binaryMessenger;
        
        hostApi = TeamScoreHostApiImplementation(session: session)
        TeamScoreHostApiSetup.setUp(binaryMessenger: binaryMessenger, api: hostApi)
        
        flutterApi = TeamScoreFlutterApi(binaryMessenger: binaryMessenger)
    }
}

import Foundation
import WatchConnectivity

class WatchViewModel: NSObject, ObservableObject, WCSessionDelegate {
    @Published var team1Score = 0
    @Published var team2Score = 0
    
    var session: WCSession
    
    init(session: WCSession = .default) {
        self.session = session
        super.init()
        self.session.delegate = self
        session.activate()
    }
    
    
    private func sendData() {
        sendData(data: ["team1Score": team1Score, "team2Score": team2Score])
    }
    
    func reset() {
        team1Score = 0;
        team2Score = 0;
        sendData();
    }
    
    func updateTeam1Score(score: Int) {
        team1Score = score;
        sendData();
    }
    
    func updateTeam2Score(score: Int) {
        team2Score = score;
        sendData();
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) { }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("[watchOS] received message", message)
        DispatchQueue.main.async {
            self.team1Score = message["team1Score"] as! Int;
            self.team2Score = message["team2Score"] as! Int;
        }
    }
    
    func sendData(data: [String: Any]) {
        print("[watchOS] send message", data)
        guard session.isReachable else {
            print("[watchOS] session is not reachable");
            return
        }
        session.sendMessage(data, replyHandler: nil, errorHandler: nil)
    }
    
}

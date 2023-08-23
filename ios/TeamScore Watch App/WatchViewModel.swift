import Foundation
import WatchConnectivity

class WatchViewModel: NSObject, ObservableObject, WCSessionDelegate {
    var session: WCSession
    //    @Published var taskList = [Task]()
    
    // Add more cases if you have more receive method
    enum WatchReceiveMethod: String {
        case sendDataToNative
    }
    
    // Add more cases if you have more sending method
    enum WatchSendMethod: String {
        case updateFromNative
    }
    
    init(session: WCSession = .default) {
        self.session = session
        super.init()
        self.session.delegate = self
        session.activate()
    }
    
    private func sendData(for method: WatchSendMethod, data: [String: Any] = [:]) {
        sendData(for: method.rawValue, data: data)
    }
    
    func testSend(index: Int) {
        sendData(for: WatchSendMethod.updateFromNative, data: ["counter": index])
    }
    
    //    func updateTask(index: Int, status: Bool) {
    //        taskList[index].status = status
    //        sendData(for: WatchSendMethod.updateFromNative, data: ["index": index, "status": status])
    //    }
    //
    //    private func makeTaskList(_ origin: [Any]) -> [Task] {
    //        var tasks = [Task]()
    //        for item in origin {
    //            if let task = item as? [Any], task.count > 1, let text = task[0] as? String, let status = task[1] as? Bool {
    //                tasks.append(Task(text: text, status: status))
    //            }
    //        }
    //        return tasks
    //    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) { }
    
    // Receive message From AppDelegate.swift that send from iOS devices
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print("watch session call")
        print(message)
        DispatchQueue.main.async {
            print("method", message["method"])
            print("counter", message["counter"])
            guard let method = message["method"] as? String, let enumMethod = WatchReceiveMethod(rawValue: method) else {
                print("nok message")
                return
            }
            
            switch enumMethod {
            case .sendDataToNative:
                print("watch os message")
                print(message)
                //                self.taskList = self.makeTaskList(message["data"] as? [Any] ?? [Any]())
            }
        }
    }
    
    func sendData(for method: String, data: [String: Any] = [:]) {
        guard session.isReachable else {
            return
        }
        let messageData: [String: Any] = ["method": method, "data": data]
        session.sendMessage(messageData, replyHandler: nil, errorHandler: nil)
    }
    
}

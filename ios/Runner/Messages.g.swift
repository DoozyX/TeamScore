// Autogenerated from Pigeon (v10.1.6), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

enum Code: Int {
  case one = 0
  case two = 1
}

/// Generated class from Pigeon that represents data sent in messages.
struct MessageData {
  var team1Score: Int64
  var team2Score: Int64

  static func fromList(_ list: [Any?]) -> MessageData? {
    let team1Score = list[0] is Int64 ? list[0] as! Int64 : Int64(list[0] as! Int32)
    let team2Score = list[1] is Int64 ? list[1] as! Int64 : Int64(list[1] as! Int32)

    return MessageData(
      team1Score: team1Score,
      team2Score: team2Score
    )
  }
  func toList() -> [Any?] {
    return [
      team1Score,
      team2Score,
    ]
  }
}

private class TeamScoreHostApiCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return MessageData.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class TeamScoreHostApiCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? MessageData {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class TeamScoreHostApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return TeamScoreHostApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return TeamScoreHostApiCodecWriter(data: data)
  }
}

class TeamScoreHostApiCodec: FlutterStandardMessageCodec {
  static let shared = TeamScoreHostApiCodec(readerWriter: TeamScoreHostApiCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol TeamScoreHostApi {
  func sendScore(message: MessageData, completion: @escaping (Result<Void, Error>) -> Void)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class TeamScoreHostApiSetup {
  /// The codec used by TeamScoreHostApi.
  static var codec: FlutterStandardMessageCodec { TeamScoreHostApiCodec.shared }
  /// Sets up an instance of `TeamScoreHostApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: TeamScoreHostApi?) {
    let sendScoreChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.team_score.TeamScoreHostApi.sendScore", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      sendScoreChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let messageArg = args[0] as! MessageData
        api.sendScore(message: messageArg) { result in
          switch result {
            case .success:
              reply(wrapResult(nil))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      sendScoreChannel.setMessageHandler(nil)
    }
  }
}
private class TeamScoreFlutterApiCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return MessageData.fromList(self.readValue() as! [Any?])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class TeamScoreFlutterApiCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? MessageData {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class TeamScoreFlutterApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return TeamScoreFlutterApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return TeamScoreFlutterApiCodecWriter(data: data)
  }
}

class TeamScoreFlutterApiCodec: FlutterStandardMessageCodec {
  static let shared = TeamScoreFlutterApiCodec(readerWriter: TeamScoreFlutterApiCodecReaderWriter())
}

/// Generated class from Pigeon that represents Flutter messages that can be called from Swift.
class TeamScoreFlutterApi {
  private let binaryMessenger: FlutterBinaryMessenger
  init(binaryMessenger: FlutterBinaryMessenger){
    self.binaryMessenger = binaryMessenger
  }
  var codec: FlutterStandardMessageCodec {
    return TeamScoreFlutterApiCodec.shared
  }
  func sendScore(data dataArg: MessageData, completion: @escaping () -> Void) {
    let channel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.team_score.TeamScoreFlutterApi.sendScore", binaryMessenger: binaryMessenger, codec: codec)
    channel.sendMessage([dataArg] as [Any?]) { _ in
      completion()
    }
  }
}
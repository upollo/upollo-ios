import Foundation
import UpolloCore

public class UpolloClient {
  private var core: UpCore

  // Accepts the project's public api key and an optional options object.
  public init(publicApiKey: String, options: [String: String] = [:]) throws {
    self.core = try UpCore(publicApiKey: publicApiKey, options: options)
  }

  // Inform Upollo of an event in your client application, and get back
  // an immediate assessment of the user.
  //
  // Include any UserInfo you have, or an empty UserInfo if you have none.
  public func assess(
    userinfo: UpProto_UserInfo,
    did eventtype: UpProto_EventType,
    callback: @escaping (UpProto_AnalysisResponse) -> Void,
    failure: @escaping (Error) -> Void) {

    self.core.assessUser(
      try! userinfo.serializedData(),
      did: Int32(eventtype.rawValue),
      callback: { resp in
        var ar: UpProto_AnalysisResponse
        do {
          ar = try UpProto_AnalysisResponse.init(serializedData: resp)
        } catch {
          failure(error)
          return
        }
        callback(ar)
      },
      failure: failure)
  }

  // Inform Upollo of an event in your client application, and get back
  // a receipt in the form of an EventToken.
  //
  // Include any UserInfo you have, or an empty UserInfo if you have none.
  public func track(
    userinfo: UpProto_UserInfo,
    did eventtype: UpProto_EventType,
    callback: @escaping (UpProto_EventResponse) -> Void,
    failure: @escaping (Error) -> Void) {

    self.core.trackUser(
      try! userinfo.serializedData(),
      did: Int32(eventtype.rawValue),
      callback: { resp in
        var vr: UpProto_EventResponse
        do {
          vr = try UpProto_EventResponse.init(serializedData: resp)
        } catch {
          failure(error)
          return
        }
        callback(vr)
      },
      failure: failure)
  }
}

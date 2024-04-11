//
//  SendbirdChatClient.swift
//  sendbirdTest
//
//  Created by drh on 10/04/2024.
//

import Foundation
import SendbirdUIKit
import UIKit

final class SendbirdChatClient {
    let sendbirdAppId = "your-app-id"

    let accessToken = "your-access-token"
    let currentUser = "your-username"

    func initialiseChatService(completion: @escaping (Error?) -> ()) {
        SBUGlobals.currentUser = SBUUser(userId: currentUser)
        SBUGlobals.accessToken = accessToken
    
        SendbirdUI.initialize(applicationId: sendbirdAppId) {
            // chat is initialising...
        } migrationHandler: {
            // migrations are happening here...
        } completionHandler: { error in
            if let error {
                print("drh: failed to initalise sendbird: \(error)")
                completion(error)
                return
            }
            print("drh: initialised sendbird chat service")

            SendbirdUI.connect { user, error in
                if let error {
                    print("drh: failed to connect to chat: \(error)")
                    completion(error)
                    return
                }
                print("drh: connected to chat.")
                completion(nil)
            }
            
        }
    }
    
    func chatListViewController() -> SBUGroupChannelListViewController {
        SBUGroupChannelListViewController()
    }
}

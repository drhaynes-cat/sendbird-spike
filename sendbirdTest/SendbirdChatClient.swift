//
//  SendbirdChatClient.swift
//  sendbirdTest
//
//  Created by drh on 10/04/2024.
//

import Foundation
import SendbirdUIKit

final class SendbirdChatClient {
    func initialiseChatService() {
        let sendbirdAppId = "5ACE1D16-317A-4A14-A47D-6418AF5FF67B"
            SendbirdUI.initialize(applicationId: sendbirdAppId) {
                // Do something to display the start of the SendbirdUIKit initialization.
            } migrationHandler: {
                // Do something to display the progress of the DB migration.
            } completionHandler: { error in
                if let error {
                    print("drh: failed to initalise sendbird: \(error)")
                    return
                }
                print("drh: initialised sendbird chat service")
            }
    }
}

//
//  InboxViewController.swift
//  sendbirdTest
//
//  Created by drh on 10/04/2024.
//

import UIKit

final class InboxViewController: UIViewController {
    private let sendbirdChatClient: SendbirdChatClient

    init(sendbirdChatClient: SendbirdChatClient) {
        self.sendbirdChatClient = sendbirdChatClient
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendbirdChatClient.initialiseChatService()
    }
}

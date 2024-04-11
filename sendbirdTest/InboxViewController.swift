//
//  InboxViewController.swift
//  sendbirdTest
//
//  Created by drh on 10/04/2024.
//

import UIKit

final class InboxViewController: UIViewController {
    private let sendbirdChatClient: SendbirdChatClient
    private let childNavigationController: UINavigationController

    init(childNavigationController: UINavigationController = UINavigationController(),
         sendbirdChatClient: SendbirdChatClient) {
        self.childNavigationController = childNavigationController
        self.sendbirdChatClient = sendbirdChatClient
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground

        addChild(childNavigationController)
        view.addAutoLayoutSubview(childNavigationController.view)
        childNavigationController.view.pin(to: view)
        childNavigationController.didMove(toParent: self)
        
        sendbirdChatClient.initialiseChatService() { [weak self] error in
            guard let self else { return }
            guard error == nil else {
                print("drh: Error connecting to chat")
                return
            }
            let chatListView = sendbirdChatClient.chatListViewController()
            
            self.childNavigationController.viewControllers = [chatListView]
        }
    }
}


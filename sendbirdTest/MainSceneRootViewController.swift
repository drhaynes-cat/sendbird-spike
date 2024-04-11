//
//  ViewController.swift
//  sendbirdTest
//
//  Created by drh on 10/04/2024.
//

import UIKit

class MainSceneRootViewController: UIViewController {
    private lazy var inboxViewController: InboxViewController = {
        let inboxViewController = InboxViewController(sendbirdChatClient: SendbirdChatClient())
        return inboxViewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(inboxViewController)
        view.addAutoLayoutSubview(inboxViewController.view)
        inboxViewController.view.pin(to: view)
        inboxViewController.didMove(toParent: self)
    }
}

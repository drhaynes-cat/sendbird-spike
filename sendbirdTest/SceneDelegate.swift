//
//  SceneDelegate.swift
//  sendbirdTest
//
//  Created by drh on 10/04/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var mainSceneRootViewController: UIViewController = MainSceneRootViewController()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = mainSceneRootViewController
        window?.makeKeyAndVisible()
    }
}


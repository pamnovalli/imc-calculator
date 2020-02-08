//
//  AppDelegate.swift
//  IndiceDeMassaCorporea
//
//  Created by Pamela Ianovalli on 20/05/19.
//  Copyright © 2019 Pamela Ianovalli. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
   
    
     var mainNavigationController: UINavigationController = UINavigationController(rootViewController: HomeViewController(nibName: "HomeViewController", bundle: Bundle.main))
     let navigationBarAppearence = UINavigationBar.appearance()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        navigationBarAppearence.tintColor = UIColor.white
        navigationBarAppearence.barTintColor = UIColor.systemTeal
        navigationBarAppearence.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = mainNavigationController
        window?.makeKeyAndVisible()
        return true
    }
}

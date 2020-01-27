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
     

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().barTintColor = UIColor .systemTeal
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = mainNavigationController
        window?.makeKeyAndVisible()
        return true
    }
}

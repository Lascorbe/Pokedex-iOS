//
//  AppDelegate.swift
//  Pokedex
//
//  Created by Luis Ascorbe Martínez on 23/07/16.
//  Copyright © 2016 @lascorbe. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let navigation = UINavigationController(rootViewController: PokedexViewController())
        self.window?.rootViewController = navigation
        self.window?.makeKeyAndVisible()
        
        return true
    }
}


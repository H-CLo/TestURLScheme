//
//  AppDelegate.swift
//  TestURLSchemeServer
//
//  Created by Hung Chang Lo on 23/01/2017.
//  Copyright © 2017 Go-Trust. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

    /**
     life cycle order:
     Sender launch:
     viewDidLoad -> viewWillAppear -> applicationDidBecomeActive ->
     -> UIApplicationDidBecomeActiveNotification -> viewDidAppear
     
     Receiver receive URL at first launch:
     viewDidLoad -> viewWillAppear -> appDelegate.application(:openURL) -> appDelegate.applicationDidBecomeActive ->
     -> UIApplicationDidBecomeActiveNotification -> viewDidAppear
     
     Receiver receive URL in backgroud already:
     applicationWillEnterForeground -> appDelegate.application(:openURL) -> appDelegate.applicationDidBecomeActive ->
     -> UIApplicationDidBecomeActiveNotification ->
     (sendback x-callback-url) ->
     -> applicationWillResignActive -> applicationDidEnterBackground
     
     Sender receive URL:
     applicationWillEnterForeground -> AppDelegate: application(:openURL) -> appDelegate.applicationDidBecomeActive ->
     -> UIApplicationDidBecomeActiveNotification
     (no view Load or Appear)
     
     */
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        NSLog("In URL Server: Url = \(url)")
        NSLog("In URL Server: options = \(options)")
        
        return true
    }
}


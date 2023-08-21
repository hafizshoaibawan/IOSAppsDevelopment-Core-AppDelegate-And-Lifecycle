//
//  AppLifeCycleApp.swift
//  AppLifeCycle
//
//  Created by Shoaib Akram on 21/08/2023.
//


import UIKit
import Foundation

import SwiftUI



class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        self.setupApp()
        
        return true
    }
    
    
    func setupApp() {
        print("Your app is being setup")
    }
    
}




@main
struct AppLifeCycleApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelagate
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: self.scenePhase) { newValue in
            if newValue == .active {
                print("your app is active now")
            }
            else if newValue == .background {
                print("your app is in background")
            }
            else if newValue == .inactive {
                print("your app is inactive")
            }
        }
    }
}

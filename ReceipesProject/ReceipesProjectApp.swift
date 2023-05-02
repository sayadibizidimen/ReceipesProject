//
//  ReceipesProjectApp.swift
//  ReceipesProject
//
//  Created by sayadi imen on 17/3/2023.
//
/*
import SwiftUI

@main
struct ReceipesProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
*/
import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
@main
struct ReceipesProjectApp: App {
  
    @StateObject private var modelData = ModelData()
   @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
  
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}




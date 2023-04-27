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

@main
struct ReceipesProjectApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

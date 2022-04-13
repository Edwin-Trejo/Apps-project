//
//  GymAppPrototype1App.swift
//  GymAppPrototype1
//
//  Created by Edwin Trejo on 4/11/22.
//

import SwiftUI

@main
struct GymAppPrototype1App: App {
    @StateObject private var store = ExerciseStorage()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}

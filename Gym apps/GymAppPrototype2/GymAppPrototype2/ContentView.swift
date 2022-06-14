//
//  ContentView.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem() {
                    Image(systemName: "house")
                    Text("Home")
                }
            Exercises()
                .tabItem() {
                    Image(systemName: "figure.walk")
                    Text("Exercises")
                }
        
            Calendar()
                .tabItem() {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
        
            Settings()
                .tabItem() {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

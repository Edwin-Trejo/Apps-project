//
//  ContentView.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {       //Navigation bar/tab
            Home()
                .tabItem() {        //Home view
                    Image(systemName: "house")
                    Text("Home")
                }
            Exercises()
                .tabItem() {        //Exercises view
                    Image(systemName: "figure.walk")
                    Text("Exercises")
                }
        
            Calendar()
                .tabItem() {        //Calendar view
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
        
            Settings()
                .tabItem() {        //Settings view
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

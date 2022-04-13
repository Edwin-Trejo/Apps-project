//
//  ContentView.swift
//  GymAppPrototype1
//
//  Created by Edwin Trejo on 4/11/22.
//

import SwiftUI

struct ContentView: View {
    var exercise: [Exercises] = []
    var body: some View {
        NavigationView{
            List(exercise) { Exercises in
                    NavigationLink(destination: Text(Exercises.name)){
                    Image(systemName: "photo")
                
                    VStack(alignment: .leading) {
                    
                        Text(Exercises.name)
                        Text(Exercises.Description) .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Exercises")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(exercise: testData)
    }
}

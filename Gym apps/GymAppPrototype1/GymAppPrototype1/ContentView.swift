//
//  ContentView.swift
//  GymAppPrototype1
//
//  Created by Edwin Trejo on 4/11/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: ExerciseStorage
    var body: some View {
        NavigationView{
            List(store.exercise) { Exercises in
                ExtractedView(Exercises: Exercises)
            }
            .navigationTitle("Exercises")
            .toolbar{
                #if os(iOS)
                EditButton()
                #endif
            }
            
            Text("Select an Exercise").font(.largeTitle)
            }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
    }
}


struct ExtractedView: View {
    var Exercises: Exercises
    var body: some View {
        NavigationLink(destination: ExerciseDetail(Exercises: Exercises )){
            Image(systemName: "photo")
                
            
            VStack(alignment: .leading) {
                
                Text(Exercises.name)
                Text(Exercises.Description) .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

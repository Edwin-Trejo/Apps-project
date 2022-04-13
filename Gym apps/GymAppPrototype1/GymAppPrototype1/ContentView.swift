//
//  ContentView.swift
//  GymAppPrototype1
//
//  Created by Edwin Trejo on 4/11/22.
//

import SwiftUI

struct ContentView: View {
    var exerciseList: [Exercises] = []
    var body: some View {
        NavigationView{
            List(exerciseList) { Exercises in
                ExtractedView(Exercises: Exercises)
            }
            .navigationTitle("Exercises")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(exerciseList: testData)
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

//
//  Exercises.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import SwiftUI

struct Exercises: View {
    @ObservedObject var store: ExerciseStorage
    var body: some View {
        NavigationView{
            List(store.exercise) {Exercises in
                    ExtractedView(Exercises: Exercises)
            }
        }
    }
}

struct Exercises_Previews: PreviewProvider {
    static var previews: some View {
        Exercises(store: testStore)
    }
}

struct ExtractedView: View {
    var Exercises: Exercises
    var body: some View{
        NavigationLink(destination: ExerciseDetails(ExercisesList: ExercisesList)){
            Image(systemName: "photo")
            
            VStack(alignment: .leading){
                Text(ExercisesList.name)
                Text(ExercisesList.Description).font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

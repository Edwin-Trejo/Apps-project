//
//  ExerciseStorage.swift
//  GymAppPrototype1
//
//  Created by Edwin Trejo on 4/13/22.
//

import Foundation

class ExerciseStorage: ObservableObject{
    @Published var exercise: [Exercises]
    
    init(exercise: [Exercises] = []){
        self.exercise = exercise
    }
}

let testStore = ExerciseStorage(exercise: testData)

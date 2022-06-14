//
//  ExerciseStorage.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import Foundation

class ExerciseStorage: ObservableObject{
    @Published var exercise: [ExercisesList]
    
    init(exercise: [ExercisesList] = []){
        self.exercise = exercise
    }
}

let testStore = ExerciseStorage(exercise: dataList)

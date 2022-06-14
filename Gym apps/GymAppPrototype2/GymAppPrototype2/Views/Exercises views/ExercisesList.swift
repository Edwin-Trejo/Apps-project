//
//  ExercisesList.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import Foundation

struct ExercisesList: Identifiable {
    var id = UUID()
    var name: String
    var Description: String
    var imageName: String {return name}
    var thumbnailName: String {return name + "Thumb"}
}

let dataList = [
    ExercisesList(name: "Push up", Description: "Classic push up"),
    ExercisesList(name: "Dumbell curl", Description: "Bicep dumbell curl"),
    ExercisesList(name: "Deadlift", Description: "Deadlift"),
    ExercisesList(name: "Tricep extension", Description: "Tricep exten"),
    ExercisesList(name: "squat", Description: "Classic squat"),
]

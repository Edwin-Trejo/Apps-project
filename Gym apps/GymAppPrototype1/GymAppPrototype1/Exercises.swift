//
//  Exercises.swift
//  GymAppPrototype1
//
//  Created by Edwin Trejo on 4/12/22.
//

import Foundation

struct Exercises: Identifiable {
    var id = UUID()
    var name: String
    var Description: String
    
    var imageName: String {return name}
    var thumbnailName: String {return name + "Thumb"}
}

let testData = [
    Exercises(name: "Push up", Description: "Classic push up"),
    Exercises(name: "Dumbell curl", Description: "Bicep dumbell curl"),
    Exercises(name: "Deadlift", Description: "Deadlift"),
    Exercises(name: "Tricep extension", Description: "Tricep exten"),
    Exercises(name: "squat", Description: "Classic squat"),
    
]

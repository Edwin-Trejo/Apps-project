//
//  ExerciseDetail.swift
//  GymAppPrototype1
//
//  Created by Edwin Trejo on 4/12/22.
//

import SwiftUI

struct ExerciseDetail: View {
    var Exercises:Exercises
    var body: some View {
        Image(systemName: "photo")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ExerciseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetail(Exercises: testData[0])
    }
}

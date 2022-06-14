//
//  ExerciseDetails.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import SwiftUI

struct ExerciseDetails: View {
    var ExercisesList:ExercisesList
    var body: some View {
        Image(systemName: "photo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .navigationTitle("Exercise")
    }
}

struct ExerciseDetails_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetails(ExercisesList: dataList[0])
    }
}

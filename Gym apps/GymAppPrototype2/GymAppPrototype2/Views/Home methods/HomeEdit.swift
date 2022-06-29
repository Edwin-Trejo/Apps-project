//
//  HomeEdit.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/17/22.
//

import SwiftUI

//struct HomeEdit: View {
//
//
//
//    var home : Home
//
//    var body: some View {
//        NavigationView{
//            VStack(spacing: 10){
//                Text("What's your age?")
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//
//                Text("\(String(format: "%.0f", home.currentUserAge))")
//                    .font(.largeTitle)
//                Slider(value: home.$currentUserAge, in: 14...100, step: 1)
//                    .accentColor(.green)
//
//                Text("What's your weight?")
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//
//                Text("Weight(Lbs): \(String(format: "%.0f", home.currentUserWeight))")
//
//                Picker("", selection: home.$currentUserWeight){
//                    ForEach(60...400, id: \.self){
//                        Text("\($0)") .font(.largeTitle)
//                    }
//                }
//                //Text("Selection: \(String(format: "%.0f", home.currentUserWeight))")
//
//                Button(action: {
//                    //TODO
//
//
//
//                }, label: {
//
//                    Text("SAVE")
//                        .foregroundColor(.white)
//                        .padding(10)
//                        .background(
//                            Color.green
//                                .cornerRadius(10)
//                                .shadow(radius: 10))
//                }) .padding()
//            }
//            .navigationTitle("Edit current data")
//        }
//    }
//}
//
//struct HomeEdit_Previews: PreviewProvider {
//    static let homePreview = Home(
//        currentUserWeight: 0,
//        currentUserAge: 0
//    )
//
//    static var previews: some View {
//        HomeEdit(home: homePreview)
//    }
//}

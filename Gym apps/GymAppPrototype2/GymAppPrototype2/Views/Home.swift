//
//  Home.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            ZStack{
                VStack(spacing: 10) {
                    Text(Date(),style: .date)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    Text("My stats:")
                        .font(.title)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    Text("Age")
                    Text("weight/height")
                    Text("Goal:")
                        .font(.title)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    Text("Weight")
                    Text("Today's Workout:")
                        .font(.title)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    Spacer()
                }
                .navigationTitle("Welcome!")
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

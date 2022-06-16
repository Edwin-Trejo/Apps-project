//
//  Home.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import SwiftUI

struct Home: View {
    @State var buttonText = ""
    @State var newWeight = ""
    @State var newAge: String = "1"
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack() {
                    Text(Date(),style: .date)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    Text("My stats:")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    HStack(){  //Hstack containing Age, and button to update Age
                        Text("Age")
                            .font(.title) .fontWeight(.light)
                            .padding(.horizontal) .frame(maxWidth: .infinity, alignment: .leading)
                        Text(newAge)
                        
                        Button(action: {
                            //TODO
                            self.newAge = "10"
                            
                        }, label: {
                            Text("Update")
                                .foregroundColor(.white)
                                .padding(.vertical,5)
                                .padding(.horizontal,5)
                                .background(
                                    Color.blue
                                        .cornerRadius(10)
                                        .shadow(radius: 10))
                        }) .padding(.horizontal)
                    }
                                
                    HStack(){   //Hstack containing Weight, and button to update current weight
                        Text("Weight: ")
                            .font(.title) .fontWeight(.light)
                            .padding(.horizontal) .frame(maxWidth: .infinity, alignment: .leading)
                        Button(action: {
                            
                            //TODO
                            
                        }, label: {
                            Text("Update")
                                .foregroundColor(.white)
                                .padding(.vertical,5)
                                .padding(.horizontal,5)
                                .background(
                                    Color.blue
                                        .cornerRadius(10)
                                        .shadow(radius: 10))
                        }) . padding(.horizontal)
                        
                    }
                
                    
                    Text("Goal:")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    Text("Weight")
                    Text("Today's Workout:")
                        .font(.title)
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

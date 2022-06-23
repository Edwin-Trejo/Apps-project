//
//  Home.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import SwiftUI


struct Home: View {
    //Saves variable in AppStorage, if no data var = 0
    @AppStorage("weight") var currentUserWeight: Double = 0
    @AppStorage("age") var currentUserAge: Double = 0
    @AppStorage("goalWeight") var goalUserWeight: Double = 0
    
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
                    HStack(){      //Hstack with My stats and update button

                        Text("My stats:")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                        
                       // NavigationLink("EDIT", destination: HomeEdit)
                    
                        
                        
                        Button(action: {
                            //TODO
                            
                                
                            
                        }, label: {
                            Text("Edit")
                                .foregroundColor(.white)
                                .padding(.vertical,5)
                                .padding(.horizontal,10)
                                .background(
                                    Color(red: 0.2, green: 1.0, blue: 0.4)
                                        .cornerRadius(10)
                                        .shadow(radius: 10))
                        }) .padding(.horizontal)
                    }
                    
                    Text("Age: \(String(format: "%.0f", currentUserAge))")
                        .font(.title) .fontWeight(.light)
                        .padding(.horizontal)
                
                    Text("Weight: \(String(format: "%.0f", currentUserWeight))")
                        .font(.title) .fontWeight(.light)
                        .padding(.horizontal)
                        
                
                    HStack(){
                        Text("Goal:")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        Button(action: {
                            //TODO
                            
                                
                            
                        }, label: {
                            Text("Edit")
                                .foregroundColor(.white)
                                .padding(.vertical,5)
                                .padding(.horizontal,10)
                                .background(
                                    Color(red: 0.2, green: 1.0, blue: 0.4)
                                        .cornerRadius(10)
                                        .shadow(radius: 10))
                        }) .padding(.horizontal)
                    }
                    
                    Text("Weight: \(String(format: "%.0f", goalUserWeight))")
                        .font(.title) .fontWeight(.light)
                        .padding(.horizontal)
                        
                    
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



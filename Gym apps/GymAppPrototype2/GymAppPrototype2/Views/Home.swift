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
                        
                        Button(action: {
                            //TODO
                            
                                
                            
                        }, label: {
                            Text("Edit")
                                .foregroundColor(.white)
                                .padding(.vertical,5)
                                .padding(.horizontal,5)
                                .background(
                                    Color(red: 0.2, green: 1.0, blue: 0.4)
                                        .cornerRadius(10)
                                        .shadow(radius: 10))
                        }) .padding(.horizontal)
                    }
                    HStack(){  //Hstack containing Age
                        Text("Age")
                            .font(.title) .fontWeight(.light)
                            .padding(.horizontal) .frame(maxWidth: .infinity, alignment: .leading)
                        
                        //Temporary
                        Text(newAge)
                            .padding(.horizontal)
                        
                        //TODO
                        //Changable Var containing Age
                        
                    }
                                
                    HStack(){   //Hstack containing Weight
                        Text("Weight: ")
                            .font(.title) .fontWeight(.light)
                            .padding(.horizontal) .frame(maxWidth: .infinity, alignment: .leading)
                        
                        //TODO
                        // Changable Var containing Weight
                            
                        
                    }
                
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
                                .padding(.horizontal,5)
                                .background(
                                    Color(red: 0.2, green: 1.0, blue: 0.4)
                                        .cornerRadius(10)
                                        .shadow(radius: 10))
                        }) .padding(.horizontal)
                    }
                    HStack(){   //Hstack containing Weight
                        Text("Weight: ")
                            .font(.title) .fontWeight(.light)
                            .padding(.horizontal) .frame(maxWidth: .infinity, alignment: .leading)
                        
                        //TODO
                        // Changable Var containing Weight
                        
                    }
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



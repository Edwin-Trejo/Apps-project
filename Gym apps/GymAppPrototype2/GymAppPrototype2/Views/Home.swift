//
//  Home.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import SwiftUI

private var weight: Double = 0
private var age: Double = 0

struct Home: View {
    //Saves variable in AppStorage, if no data var = 0
    @AppStorage("weight") static var currentUserWeight: Double = 0
    @AppStorage("age") static var currentUserAge: Double = 0
    @AppStorage("goalWeight") static var goalUserWeight: Double = 0
    
    static var something = "someString"
    
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
                        
                        NavigationLink(destination: HomeEdit1(), label: {
                            Text("EDIT")
                        })
                        
                        
                        
                        Button(action: {
                            
                            
                            
                                
                            
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
                    
                    Text("Age: \(String(format: "%.0f", Home.currentUserAge))")
                        .font(.title) .fontWeight(.light)
                        .padding(.horizontal)
                
                    Text("Weight: \(String(format: "%.0f", Home.currentUserWeight))")
                        .font(.title) .fontWeight(.light)
                        .padding(.horizontal)
                        
                
                    HStack(){
                        Text("Goal:")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        Button(action: {
                            
                            //HomeEdit()
                            
                                
                            
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
                    
                    Text("Weight: \(String(format: "%.0f", Home.goalUserWeight))")
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




struct HomeEdit1: View {
    //var homeVar : Home
    
    
    var body: some View {
            VStack(spacing: 10){
                Text("What's your age?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            
                Text("\(String(format: "%.0f", Home.currentUserAge))")
                    .font(.largeTitle)
                Slider(value: Home.$currentUserAge, in: 14...100, step: 1)
                    .accentColor(.green)
                
                Text("What's your weight?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)

                Text("Weight(Lbs): \(String(format: "%.0f", Home.currentUserWeight))")
                
                Picker("", selection: Home.$currentUserWeight){
                    ForEach(60...400, id: \.self){
                        Text("\($0)") .font(.largeTitle)
                    }
                }
                //Text("Selection: \(String(format: "%.0f", homeVar.currentUserWeight))")
                
                Button(action: {
                    
                    
                        
                    
                }, label: {
                    
                    Text("SAVE")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(
                            Color.green
                                .cornerRadius(10)
                                .shadow(radius: 10))
                }) .padding()
            }
            .navigationTitle("Edit current data")
        
    }
}
    





struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
        
    }
}



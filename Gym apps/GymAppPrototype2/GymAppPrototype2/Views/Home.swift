//
//  Home.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

import SwiftUI

//MARK: - Main Home View
struct Home: View {
    //Saves variable in AppStorage, if no data var = 0
    @AppStorage("weight") static var currentUserWeight: String = "0"
    @AppStorage("age") static var currentUserAge: Double = 0
    @AppStorage("goalWeight") static var goalUserWeight: String = "0"
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack() {
                    Text(Date(),style: .date)
                        .fontWeight(.light)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    HStack(){      //Hstack with My stats and Edit navigation link

                        Text("My stats:")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                        
                        //Navigation link to HomeEdit1 view
                        NavigationLink(destination: HomeEdit1(), label: {
                            Text("EDIT")
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
                    HStack(){
                        Text("Weight:")
                            .font(.title) .fontWeight(.light)
                        Text(Home.currentUserWeight)
                            .font(.title) .fontWeight(.light)
                    }
                    
                        
                
                    HStack(){
                        Text("Goal:")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        NavigationLink(destination: HomeEdit1(), label: {
                            Text("EDIT")
                                .foregroundColor(.white)
                                .padding(.vertical,5)
                                .padding(.horizontal,10)
                                .background(
                                    Color(red: 0.2, green: 1.0, blue: 0.4)
                                        .cornerRadius(10)
                                        .shadow(radius: 10))
                        }) .padding(.horizontal)
                    
                    }
                    
                    HStack(){
                        Text("Weight:")
                            .font(.title) .fontWeight(.light)
                        Text(Home.goalUserWeight)
                            .font(.title) .fontWeight(.light)
                    }
        
                    Text("Today's Workout:")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(5)
                    Spacer()
                }
                .navigationTitle("Welcome!")
            }
        }
    }
}



//MARK: - HomeEdit1 View
struct HomeEdit1: View {
    //var homeVar : Home
    @State private var displayAlert = false //If true, alert will appear
    @State var sliderValue1: Double = 0
    @State var sliderValue2: String = "0"
    @State var selection: String = "1"
    
    var body: some View {
            VStack(spacing: 10){
                Text("What's your age?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            
                Text("\(String(format: "%.0f", sliderValue1))")
                    .font(.largeTitle)
                Slider(value: $sliderValue1, in: 14...100)
                    .accentColor(.green)
                
                Text("What's your weight?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)

                HStack(){
                    Text("Current Weight:")
                        .fontWeight(.semibold)
                    Text(sliderValue2)
                        .fontWeight(.semibold)
                }
 
                Picker(
                    selection: $sliderValue2,
                    label: Text("Picker"),
                    content: {
                        ForEach(60..<300) {number in
                            Text("\(number)")
                                .tag("\(number)")
                                
                        }
                    }
                )
                
                Button(action: {
                    displayAlert = true
                    Home.currentUserAge = sliderValue1
                    Home.currentUserWeight = sliderValue2
                    
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
            .alert("Saved!", isPresented: $displayAlert){
                Button("OK", role: .cancel){}
            }
            .navigationTitle("Edit current data")
        
    }
}
    





struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
        HomeEdit1()
        
    }
}



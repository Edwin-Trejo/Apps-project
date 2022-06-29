//
//  Home.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/14/22.
//

// Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))

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
                //Background Color
                RadialGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.9207144806, green: 0.9764705896, blue: 0.8646504583, alpha: 1))]),
                    center: .topLeading,
                    startRadius: 5,
                    endRadius: UIScreen.main.bounds.height
                ) .ignoresSafeArea()
                //Home page view
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
                        
                        //Navigation link to HomeEdit view
                        NavigationLink(destination: HomeEdit(), label: {
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
                        
                        NavigationLink(destination: HomeEdit(), label: {
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



//MARK: - HomeEdit View
struct HomeEdit: View {
    @State private var displayAlert = false //If true, alert will appear
    @State var sliderValue1: Double = 0     //var for slider1 value
    @State var pickerValue1: String = "0"   //var for picker value
    
    var body: some View {
        ZStack{
            //Background Color
            RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.9207144806, green: 0.9764705896, blue: 0.8646504583, alpha: 1))]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height
            ) .ignoresSafeArea()
            
            //Edit options
            VStack(spacing: 10){
                Text("What's your age?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            
                Text("\(String(format: "%.0f", sliderValue1))") //Slider for age selection
                    .font(.largeTitle)
                Slider(value: $sliderValue1, in: 14...100)
                    .accentColor(.green)
                
                Text("What's your weight?")
                    .font(.largeTitle)
                    .fontWeight(.semibold)

                HStack(){
                    Text("Current Weight:")
                        .fontWeight(.semibold)
                    Text(pickerValue1)
                        .fontWeight(.semibold)
                }
 
                Picker(                         //Picker for weight selection
                    selection: $pickerValue1,
                    label: Text("Picker"),
                    content: {
                        ForEach(60..<300) {number in
                            Text("\(number)")
                                .tag("\(number)")
                                
                        }
                    }
                )
                
                Button(action: {        //Save button
                    displayAlert = true
                    Home.currentUserAge = sliderValue1
                    Home.currentUserWeight = pickerValue1
                    
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
}
    





struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
        HomeEdit()
        
    }
}



//
//  HomeEdit.swift
//  GymAppPrototype2
//
//  Created by Edwin Trejo on 6/17/22.
//

import SwiftUI

struct HomeEdit: View {
    @State var newAge: String = "Enter age"
    @State var newWeight: String = "Enter weight"
    
    var body: some View {
        NavigationView{
            VStack(){
                TextField("", text: $newAge).padding(.horizontal)
                TextField("", text: $newWeight).padding(.horizontal)
                
                Button(action: {
                    //TODO
                    
                        
                    
                }, label: {
                    Text("SAVE")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(
                            Color.blue
                                .cornerRadius(10)
                                .shadow(radius: 10))
                }) .padding(.horizontal)
            }
            .navigationTitle("Edit data")
        }
    }
}

struct HomeEdit_Previews: PreviewProvider {
    static var previews: some View {
        HomeEdit()
    }
}

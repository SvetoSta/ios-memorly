//
//  Adventure.swift
//  Memorly
//
//  Created by Viktor Kalinkov on 03/11/2022.
//

import SwiftUI

var tnum: Int = 1
struct Adventure: View {
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                HStack{
                    Text("Cost: 40 - 60 Euros")
                        .padding(5)
                    Text("Time: 2 - 3 hours")
                }
                .font(.title3)
                VStack{
                    Text("Go to the zoo")
                        .multilineTextAlignment(.center)
                    Text("Eat some ice cream")
                        .multilineTextAlignment(.center)
                    Text("Take a picture with an animal")
                        .multilineTextAlignment(.center)
                    HStack(alignment: .center) {
                        Label("", systemImage: "camera")
                        Label("", systemImage: "figure.highintensity.intervaltraining")
                        Label("", systemImage: "fork.knife")
                    }
                    .padding(30)
                }
                .frame(width: 300, height: 300, alignment: .center)
                .background(Color("Box"))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .blur(radius: 3)
                .padding(100)
                .font(.title3)
                
                NavigationLink(destination: body2){
                    Text("Begin Adventure")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(12)
                    
                }
                .background(Color("Buttons"))
                .cornerRadius(12)
                
               Divider()
                    .opacity(0)
               Spacer()
                
            }
            
            .background(Color("Background"))
        }
        
        .navigationBarBackButtonHidden(true)
    }
    
    var body2: some View {
        NavigationView{
            VStack{
                Spacer()
                HStack{
                    Text("Cost: 40 - 60 Euros")
                        .padding(5)
                    Text("Time: 2 - 3 hours")
                }
                .font(.title3)
                VStack{
                    Text("Go to the zoo")
                        .multilineTextAlignment(.center)
                    Text("Eat some ice cream")
                        .multilineTextAlignment(.center)
                    Text("Take a picture with an animal")
                        .multilineTextAlignment(.center)
                    HStack(alignment: .center) {
                        Label("", systemImage: "camera")
                        Label("", systemImage: "figure.highintensity.intervaltraining")
                        Label("", systemImage: "fork.knife")
                    }
                    .padding(30)
                }
                
                .frame(width: 300, height: 300, alignment: .center)
                .background(Color("Box"))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding(100)
                .font(.title3)
                
                NavigationLink(destination: CompleteAdventure()){
                    Text("Enter In Scrapbook")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(12)
                    
                }
                .background(Color("Buttons"))
                .cornerRadius(12)
                
                
                Divider()
                        .opacity(0)
                Spacer()
               
            }
            .background(Color("Background"))
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Adventure_Previews: PreviewProvider {
    static var previews: some View {
        Adventure()
    }
}

//
//  ContentView.swift
//  Memorly
//
//  Created by Viktor Kalinkov on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
                Rectangle()
                .fill(Color("BarColor"))
                .frame(height: 160)
                .cornerRadius(20)
            
                Divider()
                Image("logo_m")
                    .resizable()
                    .frame(width: 200, height: 170)
                    .offset(y: 0)
                    .zIndex(1)
                Image("cloud")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .offset(x: -100,y: -180)
                Spacer()

                VStack(alignment: .leading){
                    Text("Hello @username,")
                        .padding(5)
                    Text("Today the weather outside is sunny and the temperature is ##°C.")
                        .padding(5)
                    Text(" Perfect for an activity outisde.")
                }
                    .colorInvert()
                    .font(.body)
                    .offset(y: -200)
                    .frame(width: 400, height: 200)
                Spacer()
                DatePicker(
                    "Start Date",ß
                    selection: $date,
                    displayedComponents: [.date]
                )
                .colorInvert()
                .datePickerStyle(.graphical)
                .frame(width: 380)
                .background(Color("Calendar"))
                .cornerRadius(20)
                .offset(y: -200)
            Spacer()
            VStack {
                Button("Begin Todays Adventure"){
                    
                }
                
            }
            .offset(y: -170)
            }
            .background(Color("Background"))

        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

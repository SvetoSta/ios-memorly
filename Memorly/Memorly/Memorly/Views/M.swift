//
//  M.swift
//  Memorly
//
//  Created by Viktor Kalinkov on 02/11/2022.
//

import SwiftUI

struct M: View {
    @State private var selection: String? = nil
    @State private var date = Date()
    
    var body: some View {
        NavigationView{
            VStack{
                Image("logo_m")
                    .resizable()
                    .frame(width: 250, height: 210, alignment: .center)
                VStack(alignment: .leading){
                Text("Hello @username,")
                .padding(5)
                Text("Today the weather outside is sunny and the temperature is ##°C.")
                .padding(5)
                Text(" Perfect for an activity outisde.")
                }
                .colorInvert()
                .font(.body)
                
                Spacer()
                DatePicker(
                        "Start Date",
                        selection: $date,
                        displayedComponents: [.date]
                    )
                    .datePickerStyle(.graphical)
                    .colorInvert()
                    .frame(width: 380)
                    .background(Color("Calendar"))
                    .cornerRadius(20)
                    
                
                NavigationLink(destination: ContentView()){
                    Text("Begin Todays Adventure")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(12)
                    
                }
                .background(Color("Buttons"))
                .cornerRadius(12)
            Spacer()
            Divider()
                    .opacity(0)
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                       
                    } label: {
                        Label("Settings", systemImage: "gearshape")
                            .imageScale(.large)
                    }
                    .tint(.black)
                    
                }
            }
            .background(Color("Background"))
        }
        
        
        //        VStack {
        //                Rectangle()
        //                .fill(Color("BarColor"))
        //                .frame(height: 160)
        //                .cornerRadius(20)
        //
        //                Divider()
        //                Image("logo_m")
        //                    .resizable()
        //                    .frame(width: 200, height: 170)
        //                    .offset(y: 0)
        //                    .zIndex(1)
        //                Image("cloud")
        //                    .resizable()
        //                    .frame(width: 200, height: 150)
        //                    .offset(x: -100,y: -180)
        //                Spacer()
        //
        //                VStack(alignment: .leading){
        //                    Text("Hello @username,")
        //                        .padding(5)
        //                    Text("Today the weather outside is sunny and the temperature is ##°C.")
        //                        .padding(5)
        //                    Text(" Perfect for an activity outisde.")
        //                }
        //                    .colorInvert()
        //                    .font(.body)
        //                    .offset(y: -200)
        //                    .frame(width: 400, height: 200)
        //                Spacer()
        //                DatePicker(
        //                    "Start Date",
        //                    selection: $date,
        //                    displayedComponents: [.date]
        //                )
        //                .colorInvert()
        //                .datePickerStyle(.graphical)
        //                .frame(width: 380)
        //                .background(Color("Calendar"))
        //                .cornerRadius(20)
        //                .offset(y: -200)
        //            Spacer()
        //            VStack {
        //                Button("Begin Todays Adventure"){
        //
        //                }
        //
        //            }
        //            .background(.black)
        //            .offset(y: -170)
        //            }
        //            .background(Color("Background"))
        //
        //        }
    }
}
struct M_Previews: PreviewProvider {
    static var previews: some View {
        M()
    }
}

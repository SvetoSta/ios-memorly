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
                Text("Hello Anita,")
                .padding(5)
                Text("Today the weather outside is sunny and the")
                    .padding(5)
                Text("temperature is 10°C.")
                    .padding(5)
                Text(" Perfect for an activity outisde.")
                    .padding(1)
                }
                .colorInvert()
                .font(.custom("Quicksand-VariableFont_wght", size: 19))
                
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
                
                
                    
                
                NavigationLink(destination: TestArray()){
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
                    NavigationLink(destination: ProfilePage()){
                        
                        Label("Settings", systemImage: "gearshape")
                            .imageScale(.large)
                        
                    }
                    .tint(.black)
                }
            }
            .background(Color("Background"))
        }
    }
}
struct M_Previews: PreviewProvider {
    static var previews: some View {
        M()
    }
}

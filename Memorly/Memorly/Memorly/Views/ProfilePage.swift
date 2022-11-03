//
//  ProfilePage.swift
//  Memorly
//
//  Created by Viktor Kalinkov on 03/11/2022.
//

import SwiftUI

struct ProfilePage: View {
    @State var showImagePicker: Bool = false
    @StateObject var imageData = ImageData()
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Image("logo_m")
                    .resizable()
                    .frame(width: 250, height: 210, alignment: .center)
                
                Spacer()
                VStack{
                    if imageData.imageNote.isEmpty {
                        Text("Try going on a adventure!")
                            .italic()
                            .foregroundColor(.gray)
                    }else{
                        HomeView()
                    }
                }
                .background(Color("Calendar"))
                Spacer()
              
                HStack(alignment: .center){
                    
                    Label("", systemImage: "square.and.arrow.up")
                        .imageScale(.large)
                        .foregroundColor(.white)
                    Text("MEMO/GrandmaAnita")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(12)
                    
                }
                .frame(width: 300, height: 50)
                .background(Color("Buttons"))
                .cornerRadius(12)
            Spacer()
            Divider()
                    .opacity(0)
            }
            
            .background(Color("Background"))
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}

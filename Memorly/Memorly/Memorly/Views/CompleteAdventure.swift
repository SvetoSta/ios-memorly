//
//  CompleteAdventure.swift
//  Memorly
//
//  Created by Viktor Kalinkov on 03/11/2022.
//

import SwiftUI

struct CompleteAdventure: View {
    @State var showImagePicker: Bool = false
    @StateObject var imageData = ImageData()
    
    var body: some View {
        NavigationView{
            VStack{
                if imageData.imageNote.isEmpty {
                    Button{
                        showImagePicker.toggle()
                    } label:{
                        Label("Select Image", systemImage: "photo.on.rectangle.angled")
                    }
                }else{
                    Button{
                        showImagePicker.toggle()
                    } label:{
                        Label("Select Image", systemImage: "photo.on.rectangle.angled")
                    }
                    HomeView()
                }
            }
            .navigationTitle("Memorly")
            .sheet(isPresented: $showImagePicker){
                ImagePicker(sourceType: .photoLibrary){
                    image in
                    imageData.addNote(image: image, title: getCurrentTime(), desc: "")
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink(destination: ProfilePage()){
                        
                        Label("Settings", systemImage: "gearshape")
                            .imageScale(.large)
                        
                    }
                    .tint(.black)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        withAnimation{
                            imageData.resetUserData()
                        }
                    } label:{
                        Label("Trash", systemImage: "trash")
                    }
                    .tint(.red)
                }
            }
        }
        .environmentObject(imageData)
    }
    
    func getCurrentTime()-> String{
        let date = Date()
        let calendar = Calendar.current
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        let year = calendar.component(.year, from: date)
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let thedate = "\(day)/\(month)/\(year) \(hour):\(minutes)"
        return thedate
    }
}
struct CompleteAdventure_Previews: PreviewProvider {
    static var previews: some View {
        CompleteAdventure()
    }
}

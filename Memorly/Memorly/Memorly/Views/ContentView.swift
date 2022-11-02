//
//  ContentView.swift
//  Memorly
//
//  Created by Viktor Kalinkov on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State var showImagePicker: Bool = false
    @StateObject var imageData = ImageData()
    
    var body: some View {
        NavigationView{
            VStack{
                if imageData.imageNote.isEmpty {
                    Text("Try going on a adventure!")
                        .italic()
                        .foregroundColor(.gray)
                }else{
                    HomeView()
                }
            }
            .navigationTitle("Memorly")
            .sheet(isPresented: $showImagePicker){
                ImagePicker(sourceType: .photoLibrary){
                    image in
                    imageData.addNote(image: image, title: "Edit me!", desc: "")
                }
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        showImagePicker.toggle()
                    } label:{
                        Label("Image", systemImage: "photo.on.rectangle.angled")
                    }
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
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

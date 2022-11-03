//
//  TestArray.swift
//  Memorly
//
//  Created by Viktor Kalinkov on 02/11/2022.
//

import SwiftUI

var outside: Int = 0
var inside: Int = 0
var alone: Int = 0
var notalone: Int = 0

struct TestArray: View {
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: body2.onAppear {outside1()}){
                    Text("Outside")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(12)
                    
                }
                .background(Color("Buttons"))
                .cornerRadius(12)
            Spacer()
                NavigationLink(destination: body2.onAppear {inside1()}){
                    
                    Text("Inside")
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
            
            .background(Color("Background"))
        }
        
        .navigationBarBackButtonHidden(true)
    }
    
    var body2: some View{
        NavigationView{
            VStack{
                NavigationLink(destination: Adventure().onAppear {alone1()}){
                    Text("Alone")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(12)
                    
                }
                .background(Color("Buttons"))
                .cornerRadius(12)
            Spacer()
                NavigationLink(destination: Adventure().onAppear {notalone1()}){
                    
                    Text("With Kids")
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
            
            .background(Color("Background"))
        }
        
        .navigationBarBackButtonHidden(true)
    }
    

}

struct TestArray2: View {
    var body: some View{
        if(outside > inside || notalone > alone){
            Text("Test1")
        }
    }
}

func outside1(){
    outside = outside + 1
    print(outside)
}

func inside1(){
    inside = inside + 1
    print(inside)
}

func alone1(){
    alone = alone + 1
    print(alone)
}

func notalone1(){
    notalone = notalone + 1
    print(notalone)
}
    

struct TestArray_Previews: PreviewProvider {
    static var previews: some View {
        TestArray()
    }
}

struct TestArray2_Previews: PreviewProvider{
    static var previews: some View{
        TestArray2()
    }
}

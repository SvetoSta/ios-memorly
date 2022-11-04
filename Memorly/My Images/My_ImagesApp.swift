//
//  My_ImagesApp.swift
//  My Images
//
//  Created by Viktor Kalinkov on 02/11/2022.
//

import SwiftUI

@main
struct My_ImagesApp: App {
    @StateObject var vm = ViewModel()
    var body: some Scene {
        WindowGroup {
            M()
                .environmentObject(vm)
                .onAppear {
                    UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                }
        }
    }
}

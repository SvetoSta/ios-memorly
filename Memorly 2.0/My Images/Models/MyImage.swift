//
//  MyImage.swift
//  MyImage
//
//  Created by Viktor Kalinkov on 02/11/2022.
//

import UIKit

struct MyImage: Identifiable, Codable {
    var id = UUID()
    var name: String
    var desc: String
    
    var image: UIImage {
        do {
            return try FileManager().readImage(with: id)
        } catch {
            return UIImage(systemName: "photo.fill")!
        }
    }
}

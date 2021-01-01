//
//  Bicycles.swift
//  BuyBicycle
//
//  Created by rawan alamirah on 1/1/21.
//

import Foundation
import SwiftUI

struct Bicycle: Identifiable {
    let imageName: String
    let name: String
    let id = UUID()
    
}
let Bikes = [
    Bicycle(imageName: "1", name: "1"),
    Bicycle(imageName: "2", name: "2"),
    Bicycle(imageName: "3", name: "3"),
    Bicycle(imageName: "4", name: "4"),
    Bicycle(imageName: "5", name: "5"),
    Bicycle(imageName: "6", name: "6"),
    Bicycle(imageName: "7", name: "7")
]

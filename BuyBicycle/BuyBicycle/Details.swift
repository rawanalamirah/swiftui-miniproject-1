//
//  Details.swift
//  BuyBicycle
//
//  Created by rawan alamirah on 1/1/21.
//

import SwiftUI

struct Details1: Identifiable {
     var id = UUID()
 
     @State var name: String = ""
     @State var number: String = ""
     @State var hours: Int = 0
     @State var bikes: Int = 0
}



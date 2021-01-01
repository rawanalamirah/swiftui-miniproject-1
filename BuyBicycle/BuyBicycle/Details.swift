//
//  Details.swift
//  BuyBicycle
//
//  Created by rawan alamirah on 1/1/21.
//

import Foundation

class Details: ObservableObject{
    @Published var name: String = ""
    @Published var number: String = ""
    @Published var hours: Int = 0
    @Published var bikes: Int = 0

}

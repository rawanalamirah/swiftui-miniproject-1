//
//  ContentView.swift
//  BuyBicycle
//
//  Created by rawan alamirah on 12/31/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        List(Bikes){ Bicycle in
            NavigationLink(destination: View2(Bicycle: Bicycle)){
            BicycleRow(Bicycle: Bicycle)
            }
        }
        .navigationBarTitle("Rent a Bike")
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    



struct BicycleRow: View {
    let Bicycle: Bicycle
    var body: some View {
        HStack{
            Text(Bicycle.name)
                .frame(width: 40, height: 40)
                .padding(5.0)
                .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                .clipped()
                .cornerRadius(50)
                .font(.system(size: 25))
                .foregroundColor(.white)
            
            
            Image(Bicycle.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .background(Color .white)
                .clipShape(Circle())
                .padding()
            
        }
    }
}

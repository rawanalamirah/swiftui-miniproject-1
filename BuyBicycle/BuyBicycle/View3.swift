//
//  View3.swift
//  BuyBicycle
//
//  Created by rawan alamirah on 12/31/20.
//

import SwiftUI

struct View3: View{
    
    
    var body: some View{
    VStack{
        HStack{
        Text("CheckOut")
            .padding()
            .font(.system(size: 35, weight: .bold))
        Spacer()
            }
       HStack{
        Text("Name")
        Text("")
        Spacer()
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
     
      HStack{
        Text("hours")
        Text("")
        Spacer()
                
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      
       HStack{
        Text("bikes")
        Text("")
        Spacer()
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
     
        HStack{
        Text("Phone No.")
        Text("")
        Spacer()
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
     
        HStack{
        Text("Amount")
        Text("")
        Spacer()
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    Spacer()
        

    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Pay Now")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .frame(width: 350, height: 60)
                    .background(Color .blue)
                    .cornerRadius(15.0)
            })

            
            
        }
        
    }
    
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}

//
//  View3.swift
//  BuyBicycle
//
//  Created by rawan alamirah on 12/31/20.
//

import SwiftUI

struct View3: View{
    
    var details: Details1
    @State var color: Color = .blue
    @State var text = "Pay Now"

    var body: some View{
    VStack{
        HStack{
        Text("Check")
            .padding()
            .font(.system(size: 35, weight: .bold))
        Spacer()
            }
       HStack{
        Text("Name")
        
        Spacer()
        
        Text("\(self.details.name)")

      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        HStack{
        Text("Phone No.")
            
        Spacer()
            
        Text("\(self.details.number)")
        
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
     
      HStack{
        Text("hours")
        
        Spacer()
        
        Text("\(self.details.hours)")
         
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      
       HStack{
        Text("bikes")
        
        Spacer()
        
        Text("\(self.details.bikes)")
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
     

     
        HStack{
        Text("Amount")
            
        Spacer()
            
            Text("\(self.details.bikes * 3*self.details.hours)")

      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    Spacer()
        

        Button(action: {
            color = .green
            text = "Paid Successfully"
            
        })
               { Text(text)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .frame(width: 350, height: 60)
                        .background(color)
                        .cornerRadius(15.0)
        }
            
            
    }
        
    }
    
}


struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3(details: Details1(name: "Test", number: "Test", hours: 0, bikes: 0))
    }
}

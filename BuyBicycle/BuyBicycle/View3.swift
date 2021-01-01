//
//  View3.swift
//  BuyBicycle
//
//  Created by rawan alamirah on 12/31/20.
//

import SwiftUI

struct View3: View{
    
    let detail = Details()
    @EnvironmentObject var details: Details
    var color: Color = .blue

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
        
        Text(details.name)

      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        HStack{
        Text("Phone No.")
            
        Spacer()
            
        Text(details.number)
        
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
     
      HStack{
        Text("hours")
        
        Spacer()
        
        Text("\(details.hours)")
         
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      
       HStack{
        Text("bikes")
        
        Spacer()
        
        Text("\(details.bikes)")
      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
     

     
        HStack{
        Text("Amount")
            
        Spacer()
            
        Text("\(details.bikes * 3*details.hours)")

      }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    Spacer()
        

        Button(action: {
        })
               { Text("Pay Now")
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
        View3()
            .environmentObject(Details())
            .padding(.all)
    }
}

//
//  ContentView.swift
//  BuyBicycle
//
//  Created by rawan alamirah on 12/31/20.
//

import SwiftUI

struct ContentView: View {
    @State var Bicycles: [Int] = [0, 1, 2, 3, 4, 5, 6]
    var body: some View {
       
        List{
        
        VStack(alignment: .leading){
            Text("Rent a Bicycle")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                
            Text("Hello, please choose a bicycle to continue")
                .padding()
        
        
            BicycleApp(Bicycles: $Bicycles[0], label: "1")
            BicycleApp(Bicycles: $Bicycles[1], label: "2")
            BicycleApp(Bicycles: $Bicycles[2], label: "3")
            BicycleApp(Bicycles: $Bicycles[3], label: "4")
            BicycleApp(Bicycles: $Bicycles[4], label: "5")
            BicycleApp(Bicycles: $Bicycles[5], label: "6")
            BicycleApp(Bicycles: $Bicycles[6], label: "7")
           
           
            
        }
        }
        
        
        
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
        }
        
    }
}
    


struct BicycleApp: View {
    @Binding var Bicycles: Int
    @State var label: String
    
    var body: some View{
            
              
     HStack{
         Text(label)
            .frame(width: 40, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()

        Image(label)
            .resizable()
            .scaledToFit()
            .frame(width: 60, height: 60)
            .background(Color .white)
            .clipShape(Circle())
            .padding()
        Spacer()
        
        Image(systemName: "chevron.right")
            .opacity(0.2)
      

            
        
        }
            
            

     
    }
    
}


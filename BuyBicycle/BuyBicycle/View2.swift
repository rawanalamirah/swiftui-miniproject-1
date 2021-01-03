//
//  View2.swift
//  BuyBicycle
//
//  Created by rawan alamirah on 12/31/20.
//

import SwiftUI
struct View2TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.leading)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        
    }
}


struct View2: View {
    let Bicycle: Bicycle
    let details: Details1
    @State var fullName = ""
    @State var phoneNumber = ""
    @State var noOfBikes = 0
    @State var noOfHours = 0
    var body: some View{
            VStack{
                Image(Bicycle.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .clipped()

                TextField("Full Name", text: $fullName)
                    .modifier(View2TextFieldModifier())
                    .disableAutocorrection(true)
                    .autocapitalization(.words)
                
                TextField("Phone Number", text: $phoneNumber)
                    .modifier(View2TextFieldModifier())
                
                
                Stepper("No. of Hours: \(noOfHours)", value: $noOfHours)
                    .modifier(View2TextFieldModifier())
                
                Stepper("No. of Bikes: \(noOfBikes)", value: $noOfBikes)
                    .modifier(View2TextFieldModifier())
                
                Spacer()
                
                Text("\(noOfBikes * 3*noOfHours)")
                
                Text("Total Amount")
                    .font(.body)
                    .fontWeight(.regular)
                
                if ((noOfBikes) != 0) && noOfHours > 0 {
                    NavigationLink(
                        destination: View3(details: Details1(name: fullName, number: phoneNumber, hours: noOfHours, bikes: noOfBikes)) ,
                        label: {
                            Text("Continue")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .frame(width: 350, height: 60)
                                .background(Color .blue)
                                .cornerRadius(15.0)
                        })
                    Spacer()
                    
                    
                
                
            }
            }
    }
    
    
    struct View2_Previews: PreviewProvider {
        static var previews: some View {
            View2(Bicycle: Bikes[0], details: Details1( name: "Test", number: "Test", hours: 0, bikes: 0))
            
            
        }
    }


}

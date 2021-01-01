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
    let detail = Details()
    @EnvironmentObject var details: Details

    
    var body: some View{
        NavigationView{
            VStack{
                Image(Bicycle.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .clipped()

                TextField("Full Name", text: self.$details.name)
                    .modifier(View2TextFieldModifier())
                    .disableAutocorrection(true)
                    .autocapitalization(.words)
                
                TextField("Phone Number", text: self.$details.number)
                    .modifier(View2TextFieldModifier())
                
                
                Stepper("No. of Hours: \(self.details.hours)", value: self.$details.hours)
                    .modifier(View2TextFieldModifier())
                
                Stepper("No. of Bikes: \(self.details.bikes)", value: self.$details.bikes)
                    .modifier(View2TextFieldModifier())
                
                Spacer()
                
                Text("\(self.details.bikes * 3*self.details.hours)")
                
                Text("Total Amount")
                    .font(.body)
                    .fontWeight(.regular)
                
                if ((self.details.bikes) != 0) && self.details.hours > 0 {
                    NavigationLink(
                        destination: View3().environmentObject(Details()),
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
    }
    
    struct View2_Previews: PreviewProvider {
        static var previews: some View {
            View2(Bicycle: Bikes[0])
                .padding(.bottom, 80.0)
                .environmentObject(Details())
            
            
            
        }
    }


}

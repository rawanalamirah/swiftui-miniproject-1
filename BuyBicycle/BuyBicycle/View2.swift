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
    @State var name = ""
    @State var number = ""
    @State var hours = 0
    @State var bikes = 0
    
    var body: some View{
        NavigationView{
        VStack{
            Image(systemName: "gear")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            
            
            TextField("Full Name", text: $name)
                .modifier(View2TextFieldModifier())
                .disableAutocorrection(true)
                .autocapitalization(/*@START_MENU_TOKEN@*/.words/*@END_MENU_TOKEN@*/)
            
            TextField("Phone Number", text: $number)
                .modifier(View2TextFieldModifier())
            
            
            Stepper("No. of Hours: \(hours)", value: $hours)
                .modifier(View2TextFieldModifier())
            
            Stepper("No. of Bikes: \(bikes)", value: $bikes)
                .modifier(View2TextFieldModifier())
            
            Spacer()
            
            Text("\(bikes * 3*hours)")
            
            Text("Total Amount")
                .font(.body)
                .fontWeight(.regular)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            if (bikes != 0) && hours > 0 {
                NavigationLink(
                    destination: View3(),
                    label: {
                        Text("Continue")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .frame(width: 350, height: 60)
                            .background(Color .blue)
                            .cornerRadius(15.0)
                    })
            
            
            }
            
        }
    }
    }
    
    struct View2_Previews: PreviewProvider {
        static var previews: some View {
                View2()
            
            
            
        }
    }


}
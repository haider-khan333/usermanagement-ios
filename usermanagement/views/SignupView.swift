//
//  SignupView.swift
//  usermanagement
//
//  Created by Haider on 09/09/2023.
//

import SwiftUI

struct SignupView: View {
    
    // MARK: - State variables
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var confirmPassword:String = ""
    @State private var name:String = ""
    @State private var contact:String = ""
    @State private var address:String = ""
    
    
    //MARK: - View design
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
//                BackgroundStyle()
                
                // MARK: - Welcome message
                VStack{
                    // Image
                    TopIcon(type: TopType.signup)
                        .frame(width: geometry.size.width * 0.8, height:geometry.size.height * 0.3)
                        .padding()
                    
                    
                    //Text
                    Text("Sign up")
                        .foregroundColor(Color.black)
                        .font(.system(size: 30,weight: .bold,design: .rounded))
                        .frame(width: geometry.size.width * 0.9, alignment: .leading)
                        .padding([.leading])
                        
                    
                    //Email
                    FloatingTextViewComponent(text: $email ,placeHolder: "Email ID",type: TextfieldType.email)
                    
                    //Name
                    FloatingTextViewComponent(text: $name ,placeHolder: "Full name",type: TextfieldType.name)
                   
                    //Contact
                    FloatingTextViewComponent(text: $contact ,placeHolder: "Contact",type: TextfieldType.contact)
                    
                    //Address
                    FloatingTextViewComponent(text: $address ,placeHolder: "Address",type: TextfieldType.address)

                     
                    // Submit Button
                    Button {
                        // Action
                    } label: {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .frame(width: geometry.size.width * 0.9,height: geometry.size.height * 0.06)
                            .background(
                                RoundedRectangle(cornerRadius: 5,style: .continuous)
                                    .fill(.blue)
                            )
                    }
                    
                    
                }
                
            }.ignoresSafeArea()
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}

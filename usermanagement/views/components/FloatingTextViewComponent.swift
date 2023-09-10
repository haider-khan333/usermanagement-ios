//
//  FloatingTextViewComponent.swift
//  usermanagement
//
//  Created by Haider on 09/09/2023.
//

import SwiftUI


public enum TextfieldType:String {
    case name = "name"
    case email = "email"
    case password = "password"
    case contact = "contact"
    case address = "address"
    case passwordLogin = "password-login"
    case passwordRegister = "password-register"
}

struct FloatingTextViewComponent: View {
    
    @Binding var text:String
    @State private var isPasswordVisible:Bool = false
    
    var placeHolder:String? = nil
    var type:TextfieldType
    
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    if (type.rawValue.contains("password")){
                        Image("password")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }else{
                        Image(type.rawValue)
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    
                    
                    if type == .passwordRegister && isPasswordVisible {
                        TextField(placeHolder ?? "", text: $text)
                    } else if type == .passwordRegister || type == .passwordLogin {
                        SecureField(placeHolder ?? "", text: $text)
                    } else {
                        TextField(placeHolder ?? "", text: $text)
                    }
                    
                    if type == .passwordLogin {
                        Text("Forgot password?")
                            .foregroundColor(.blue)
                            .font(.footnote)
                    }
                    
                    if type == .passwordRegister {
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                                .foregroundColor(.gray)
                        }
                    }
                }
                
                
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(Color("light-grey"))
            }
        }
        .padding()
        
        
        
    }
}

struct Underline: View {
    var body: some View {
        Rectangle()
            .frame(height: 1.0, alignment: .bottom)
            .foregroundColor(.gray)
        
    }
}



struct FloatingTextViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        FloatingTextViewComponent(text: .constant(""),placeHolder: "Email",type: TextfieldType.passwordRegister)
        //        FloatingTextViewComponent(leftIcon: "person", placeHolder:"Email",text: .constant(""))
    }
}

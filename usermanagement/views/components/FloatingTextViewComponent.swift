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
}

struct FloatingTextViewComponent: View {
    
    @Binding var text:String
    
    var placeHolder:String? = nil
    var type:TextfieldType
    
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(type.rawValue)
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    TextField(placeHolder ?? "", text: $text)
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
        FloatingTextViewComponent(text: .constant(""),placeHolder: "Email",type: TextfieldType.email)
        //        FloatingTextViewComponent(leftIcon: "person", placeHolder:"Email",text: .constant(""))
    }
}

//
//  ImageButtonComponent.swift
//  usermanagement
//
//  Created by Haider on 10/09/2023.
//

import SwiftUI

public enum ButtonType:String{
    case facebook = "facebook"
    case apple = "apple"
    case gmail = "gmail"
}

struct ImageButtonComponent: View {
    var buttonType:ButtonType
    // A closure is defined.
    var action: () -> Void
    
    var body: some View {
        
        VStack{
            Button(action: action){
                Image(buttonType.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30,height: 30)
            }
            .padding()
            .frame(width: 100)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("light-grey"),lineWidth:1)
            )
            
        }
         
    }
}

struct ImageButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ImageButtonComponent(buttonType: ButtonType.apple) {
            print("Button clicked")
        }
    }
}

//
//  BackgroundStyle.swift
//  usermanagement
//
//  Created by Haider on 09/09/2023.
//

import SwiftUI

public enum TopType:String{
    case login = "login-illustration"
    case signup = "signup-illustration"
    case set_password = "set-password"
}
struct TopIconViewComponent: View {
    var type:TopType
    var width:CGFloat
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("gradient-start"),
                                    Color("gradient-end")],
                           startPoint: .leading,
                           endPoint: .trailing)
            .opacity(0.4)
            
            Image(type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top)
                .frame(width: width)
        }
        
        
            
        
    }
}


struct TopIconViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        TopIconViewComponent(type: TopType.set_password,width: 100)
    }
}

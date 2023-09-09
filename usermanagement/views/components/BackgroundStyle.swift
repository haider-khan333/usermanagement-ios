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
}
struct TopIcon: View {
    var type:TopType
    
    var body: some View {
        Image(type.rawValue)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            
        
    }
}


struct BackgroundStyle_Previews: PreviewProvider {
    static var previews: some View {
        TopIcon(type: TopType.signup)
    }
}

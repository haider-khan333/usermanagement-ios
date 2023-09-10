//
//  NavBackButtonComponent.swift
//  usermanagement
//
//  Created by Haider on 10/09/2023.
//

import SwiftUI

struct NavBackButtonComponent: View {
    var action: ()->Void
    var body: some View {
        ZStack{
            Button(action:action){
                Image("back-button")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30,height: 30)
//                    .background(LinearGradient(colors: [Color("gradient-start"),Color("gradient-end")], startPoint: .leading, endPoint: .trailing)
//                        .opacity(0.5))
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                   
            }
            
        }
    }
}

struct NavBackButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        NavBackButtonComponent {
            print("NavBackButtonComponent: button clicked")
        }
    }
}

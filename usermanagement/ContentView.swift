//
//  ContentView.swift
//  usermanagement
//
//  Created by Haider on 06/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                Color.black
                
                // MARK: - red color design
                RoundedRectangle(cornerRadius: 30,style: .continuous)
                    .foregroundStyle(.linearGradient(colors: [.pink,.red], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .rotationEffect(.degrees(120))
                    .offset(y:-geometry.size.height * 0.45)
                
                // MARK: - Welcome message
                VStack{
                    // Text
                    Text("Welcome")
                        .foregroundColor(.white)
                        .font(.system(size: 40,weight: .bold,design: .rounded))
                        .offset(x:geometry.size.width * 0.25,
                                y: -geometry.size.height * 0.2)
                    
                    // Email text field
                    TextField("Email",text: $email)
                        .foregroundColor(.black)
                        .textFieldStyle(.roundedBorder)
                    
                    // Password text field
                    SecureField("Password", text: $password)
                        .foregroundColor(.black)
                        .textFieldStyle(.roundedBorder)
                     
                    
                    // Submit Button
                    Button {
                        // Action
                    } label: {
                        Text("Sign In")
                            .foregroundColor(.white)
                            .frame(width: geometry.size.width * 0.5,height: geometry.size.height * 0.05)
                            .background(
                                RoundedRectangle(cornerRadius: 5,style: .continuous)
                                    .fill(.red)
                            )
                    }
                    
                    
                }
                
            }.ignoresSafeArea()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  PasswordView.swift
//  usermanagement
//
//  Created by Haider on 10/09/2023.
//

import SwiftUI

struct PasswordView: View {
    // MARK: - State objects
//    @StateObject var userController = UserSignupController()
    
    // MARK: - State variables
    @State private var password:String = ""
    @State private var confirmPassword:String = ""
    
    @EnvironmentObject var navigationCoordinator: NavigationCoordinator
    @EnvironmentObject var g_UserController : UserSignupController
    
    
    var body: some View {
        NavigationView{
            GeometryReader{ geometry in
                
                ZStack{
                    
                    // MARK: - Welcome message
                    VStack{
                        // Image
                        TopIconViewComponent(type: TopType.set_password,width: geometry.size.width * 0.6)
                            .frame(height: geometry.size.height * 0.40)
                        
                        
                        //Text
                        Text("Set up your password!")
                            .foregroundColor(Color.black)
                            .font(.system(size: 30,weight: .bold,design: .rounded))
                            .frame(width: geometry.size.width * 0.9,alignment: .leading)
                            .padding(.bottom)
                        
                        
                        
                        // Password
                        FloatingTextViewComponent(text: $password,placeHolder: "Password",type: TextfieldType.passwordRegister)
                        
                        // Confirm Password
                        FloatingTextViewComponent(text: $confirmPassword,placeHolder: "Confirm password",type: TextfieldType.passwordRegister)
                        
                      
                        
                        TextButtonViewComponent(action: {
                            print("PasswordView: Button clicked")
                            
                            g_UserController.setPassword(password: password)
                            
                            g_UserController.showUserData()
                            
                        }, width: geometry.size.width * 0.95, text: "Next")
                        .padding(.top,geometry.size.height * 0.01)
                        
                    }
                    
                }.padding(.bottom)
                
                    .ignoresSafeArea()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavBackButtonComponent {
                                navigationCoordinator.navigateBack()
                                
                            }
                            
                        }
                        
                    }
            }
        }
        
    }
    
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}

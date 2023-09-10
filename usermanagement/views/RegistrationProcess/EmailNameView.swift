//
//  SignupView.swift
//  usermanagement
//
//  Created by Haider on 09/09/2023.
//

import SwiftUI

struct EmailName: View {
    
    // MARK: - State objects
    //    @StateObject var userController = UserSignupController()
    
    // MARK: - State variables
    @State private var email:String = ""
    @State private var name:String = ""
    
    // MARK: - Environment Object
    @EnvironmentObject var navigationCoordinator : NavigationCoordinator
    @EnvironmentObject var g_UserController : UserSignupController
    
    
    //MARK: - View design
    var body: some View {
        NavigationView{
            GeometryReader{ geometry in
                ScrollView{
                    ZStack{
                        
                        // MARK: - Welcome message
                        VStack{
                            // Image
                            TopIconViewComponent(type: TopType.signup,width: geometry.size.width * 0.8)
                                .frame(height: geometry.size.height * 0.37)
                            
                            
                            //Text
                            Text("Sign up")
                                .foregroundColor(Color.black)
                                .font(.system(size: 30,weight: .bold,design: .rounded))
                                .frame(width: geometry.size.width * 0.9,alignment: .leading)
                                .padding(.bottom)
                            
                            
                            HStack(spacing: geometry.size.width * 0.05){
                                ImageButtonComponent(buttonType: ButtonType.gmail) {
                                    print("gmail clicked")
                                }
                                
                                ImageButtonComponent(buttonType: ButtonType.facebook) {
                                    print("facebook clicked")
                                }
                                
                                ImageButtonComponent(buttonType: ButtonType.apple) {
                                    print("apple clicked")
                                }
                            }
                            
                            Text("Or, register with email...")
                                .padding()
                                .foregroundColor(Color.gray)
                            
                            //Email
                            FloatingTextViewComponent(text: $email ,placeHolder: "Email ID",type: TextfieldType.email)
                            
                            //Name
                            FloatingTextViewComponent(text: $name ,placeHolder: "Full name",type: TextfieldType.name)
                            
                            //Spacer
                            Spacer()
                            
                            TextButtonViewComponent(action: {
                                // MARK: - action on button click
                                
                                g_UserController.setName(name: name)
                                g_UserController.setEmail(email: email)
                                
                                navigationCoordinator.navigateTo(.passwordNameView)
                            }, width: geometry.size.width * 0.95, text: "Set Password").padding(.top,geometry.size.height * 0.02)
                            
                        }
                        
                    }
                    
                }.ignoresSafeArea()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            
                        }
                    }
                
            }
            
        }
        
    }
}

struct EmailName_Previews: PreviewProvider {
    static var previews: some View {
        EmailName()
    }
}

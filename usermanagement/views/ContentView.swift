//
//  TabView.swift
//  usermanagement
//
//  Created by Haider on 10/09/2023.
//

import SwiftUI

struct MultiTabView: View {
    
    @StateObject var navigationCoordinator = NavigationCoordinator()
    @StateObject var userController = UserSignupController()
    
    var body: some View {
        NavigationView {
            VStack{
                if navigationCoordinator.currentView == .emailNameView{
                    EmailName().environmentObject(navigationCoordinator)
                        .environmentObject(userController)
                                     
                } else if navigationCoordinator.currentView == .passwordNameView{
                    PasswordView().environmentObject(navigationCoordinator)
                        .environmentObject(userController)
                    
                    
                }
                
            }
        }
        
        
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MultiTabView()
    }
}

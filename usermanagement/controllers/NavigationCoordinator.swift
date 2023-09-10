//
//  NavigationCoordinator.swift
//  usermanagement
//
//  Created by Haider on 10/09/2023.
//

import Foundation
import SwiftUI

class NavigationCoordinator: ObservableObject{
    @Published var currentView: Views
    var viewStack:[Views] = []
    
    init() {
        self.currentView = .emailNameView
    }
    
    func navigateTo(_ view:Views){
        viewStack.append(currentView)
        self.currentView = view
        
        
        
    }
    
    func navigateBack(){
        if let lastView = viewStack.popLast(){
            currentView = lastView
        }
        
        
    }
    
    
    enum Views{
        case emailNameView
        case passwordNameView
    }
    
    
}

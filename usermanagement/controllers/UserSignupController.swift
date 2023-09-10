//
//  UserSignupController.swift
//  usermanagement
//
//  Created by Haider on 10/09/2023.
//

import Foundation

class UserSignupController:ObservableObject{
    
    @Published var user = User(email: "", name: "", contact: "", password: "", address: "")
    
    func setName(name:String){
        user.name = name
    }
    
    func setEmail(email:String){
        user.email = email
    }
    
    func setContact(contact:String){
        user.contact = contact
    }
    
    func setPassword(password:String){
        user.password = password
    }
    
    func setAddress(address:String){
        user.address = address
    }
    
    func updateUser(email:String,name:String,contact:String,password:String,address:String){
        user.email = email
        user.name = name
        user.contact = contact
        user.password = password
        user.address = address
        
    }
    
    
    func showUserData(){
        print("name : \(user.name) , \nemail : \(user.email) , \ncontact : \(user.contact) , \npassword : \(user.password) , \naddress : \(user.address)")
    }
}

//
//  UserSingleton.swift
//  usermanagement
//
//  Created by Haider on 11/09/2023.
//

import Foundation

class UserSingleton{
    let shared = UserSingleton()
    
    private init(){}
    
    var name:String = ""
    var email:String = ""
    var password:String = ""
    var address:String = ""
    var contact:String = ""
}

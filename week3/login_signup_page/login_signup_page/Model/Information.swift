//
//  Information.swift
//  login_signup_page
//
//  Created by Melody Lee on 2024/1/27.
//

import Foundation
import UIKit

class Information {
    
    var scenario = senario.logIn
    var account = ""
    var password = ""
    var check = ""
    var status = false
    var statusMessage = ""
    
    enum senario: Int {
        case logIn, signUp
    }
    
//    enum Status {
//        case valid, empty, signUpFail, logInFail
//    }
    
//    init() {
//        if self.scenario == .logIn {
//            print("Init-login")
//            checkLogInStatus()
//        } else {
//            print("Init-signup")
//            checkSignUpStatus()
//        }
//        
//    }
//    
    
    // log in
    func checkLogInStatus(){
        if (account.isEmpty || password.isEmpty) {
            status = false
            statusMessage = account.isEmpty ? "Account should not be empty." : "Password should not be empty."
        } else if ( account == "appworks_school" && password == "1234") {
            status = true
            statusMessage = "Login succeed."
        } else {
            status = false
            statusMessage = "Login fail."
        }
        
    }
    
    // signup
    func checkSignUpStatus(){
        if (account.isEmpty || password.isEmpty || check.isEmpty) {
            status = false
            statusMessage = account.isEmpty ? "Account should not be empty." : (password.isEmpty ? "Password should not be empty." : "Check password should not be empty.")
        } else if ( password != check ){
            status = false
            statusMessage = "Signup fail."
        } else {
            status = true
            statusMessage = "Signup succeed."
        }
        
    }
    
    
   
}


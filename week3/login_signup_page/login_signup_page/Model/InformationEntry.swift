//
//  InformationEntry.swift
//  login_signup_page
//
//  Created by Melody Lee on 2024/1/27.
//

import Foundation
import UIKit

class InformationEntry {
        
    var scenario = senario.signUp
    var account = ""
    var password = ""
    var check = ""
    var status = Status.empty
    
    enum senario: Int {
        case signUp, logIn
    }
    
    enum Status {
        case valid, empty, signUpFail, logInFail
    }
    
    // signup
    func signUpStatus() -> Status {
        if (account.isEmpty || password.isEmpty || check.isEmpty) {
            return .empty
        } else if ( password != check ){
            return .signUpFail
        }
        return .valid
    }
    
    
    // log in
    func logInStatus() -> Status {
        if (account.isEmpty || password.isEmpty) {
            return .empty
        } else if ( account == "appworls_school" && password == "1234") {
            return .valid
        }
        return .logInFail
    }
}

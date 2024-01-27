//
//  ViewController.swift
//  login_signup_page
//
//  Created by Melody Lee on 2024/1/27.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segmentColtroller: UISegmentedControl!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var ckeckLabel: UILabel!
    @IBOutlet weak var checkTextField: UITextField!
    
    let userInfo = Information()
    
    @IBAction func switchScenario(_ sender: UISegmentedControl) {
        if let scenario = Information.senario(rawValue: sender.selectedSegmentIndex) {
            userInfo.scenario = scenario
            switchCheckStatus()
        } else {
            userInfo.scenario = .logIn
        }
    }
    
    @IBAction func button(_ sender: UIButton) {
        updateUserInfo()
        if userInfo.scenario == .logIn {
            userInfo.checkLogInStatus()
        } else if userInfo.scenario == .signUp {
            userInfo.checkSignUpStatus()
        }
        let title = userInfo.status ? "Welcome" : "Error"
        let message = userInfo.statusMessage
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountTextField.delegate = self
        passwordTextField.delegate = self
        checkTextField.delegate = self
        switchCheckStatus()
        // Do any additional setup after loading the view.
    }
    
    func updateUserInfo() {
        userInfo.account = accountTextField.text ?? ""
        userInfo.password = passwordTextField.text ?? ""
        userInfo.check = checkTextField.text ?? ""
    }
    
    func switchCheckStatus() {
        if userInfo.scenario == .logIn {
            ckeckLabel.textColor = UIColor.systemGray
            checkTextField.backgroundColor = UIColor.systemGray
            checkTextField.isUserInteractionEnabled = false
            checkTextField.text = ""
        } else {
            ckeckLabel.textColor = UIColor.black
            checkTextField.backgroundColor = UIColor.white
            checkTextField.isUserInteractionEnabled = true
        }
        
    }

}

extension ViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    updateUserInfo()
    return true
  }
}


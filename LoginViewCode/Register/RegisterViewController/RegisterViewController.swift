//
//  RegisterViewController.swift
//  LoginViewCode
//
//  Created by Felipe Forcinetti on 14/10/21.
//

import UIKit

class RegisterViewController: UIViewController {

    var registerScreen: RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //assina os protocolos
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
    }

}

extension RegisterViewController: RegisterScreenProtocol {
    func actionBackButton() {
        print("Back Button!!")
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        print("Register Button!!")
    }
    
    
}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

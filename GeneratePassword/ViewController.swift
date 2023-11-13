//
//  ViewController.swift
//  GeneratePassword
//
//  Created by Александр Плешаков on 13.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var generateButton: UIButton!
    @IBOutlet weak var passwordTextView: UITextView!
    @IBOutlet weak var statusInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            view.endEditing(true)
        }
        
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func buttonGenerate(_ sender: Any) {
        var user = User(id: idTextField.text)
        user.generatePassword()
        statusInfoLabel.text = "Сгенерированный пароль:"
        if let password = user.password {
            passwordTextView.text = password
        } else {
            passwordTextView.text = "Произошла ошибка генерации"
        }
        passwordTextView.backgroundColor = .systemGray6
        
        view.endEditing(true)
    }
    


}


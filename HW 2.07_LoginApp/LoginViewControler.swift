//
//  ViewController.swift
//  HW 2.06_2
//
//  Created by Рамиль Хамидуллин on 07.07.2023.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userName: UITextField!
    @IBOutlet var userPassword: UITextField!
    
    private let user = "User"
    private let password = "123"
    
    //передача на viewcontroler
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        
    }
    
    @IBAction func LogInPressed() {
        guard userName.text == user, userPassword.text == password else {
            showAlert(title: "Invalid login or password", message: "Enter correct login and password")
            userPassword.text = ""
            return
        }
        view.endEditing(true)
    }
    
    @IBAction func forgotUser(_ sender: UIButton) {
        showAlert(title: "Your name is", message: "User")
    }
    
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        showAlert(title: "Your password is", message: "123")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userName.text = ""
        userPassword.text = ""
    }
    
    //test
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
    }
    
}

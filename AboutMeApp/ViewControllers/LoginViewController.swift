//
//  ViewController.swift
//  LoginApp
//
//  Created by Vladimir Maksymchuk on 02.02.2025.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let user = User.getUser()

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTF.text = user.username
        passwordTF.text = user.password
        
        loginButton.setTitle("Log In", for: .normal)
        
        setupForgotButton(button: forgotUserNameButton, title: "Forgot username?")
        setupForgotButton(button: forgotPasswordButton, title: "Forgot password?")
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard usernameTF.text == user.username && passwordTF.text == user.password else {
            createAndShowAlert(
                title: "Invalid username or password",
                message: "Please, enter correct username and password"
            )
            return
        }
        
        let tabController = segue.destination as? UITabBarController
        let personFullName = "\(user.person.name) \(user.person.surname)"
        
        tabController?.viewControllers?.forEach({ viewController in
            if let homeVC = viewController as? HomeViewController {
                homeVC.username = user.username
                homeVC.personFullName = personFullName
            } else if let navigationVC = viewController as? UINavigationController {
                if let profileVC = navigationVC.viewControllers.first as? ProfileViewController {
                    profileVC.user = user
                }
            }
        })
        
    }
    
    @IBAction func forgotUserNameAction() {
        createAndShowAlert(message: "Your username is \(user.username) 😌")
    }
    
    
    @IBAction func forgotPasswordAction() {
        createAndShowAlert(message: "Your password is \(user.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: Additional functions
extension LoginViewController {
    func setupForgotButton(button: UIButton, title: String) {
        button.setTitle(title, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.5
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
    }
    
    func createAndShowAlert(title: String = "Oops!", message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


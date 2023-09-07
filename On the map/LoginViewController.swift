//
//  ViewController.swift
//  On the map
//
//  Created by  ashwaq marzouq on 11/09/1444 AH.
//

import UIKit

class LoginViewController: UIViewController {
    
    var networkObject = NetworkMethod()
    var myKeyboard = Keyboard()
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        myKeyboard.configureTextField(textField: emailTextField!)
        myKeyboard.configureTextField(textField: passwordTextField!)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        myKeyboard.subscribeToKeyboardNotifications()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        myKeyboard.unsubscribeFromKeyboardNotifications()
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if let username = emailTextField?.text ,let password = passwordTextField?.text {
            networkObject.login(username: username, password: password) { (success, message, error) in
                if success == true {
                    DispatchQueue.main.async {
                        let mapController = self.storyboard?.instantiateViewController(withIdentifier: "TapBarController") as! UITabBarController
                        self.present(mapController, animated: true, completion: nil)
                    }
                }else {
                    if error != nil {
                        self.showAlert (message: "Please check your internet connection")
                    }else if message.contains("2xx"){
                        self.showAlert (message: "Invalid email or password")
                    }
                }
            }
        } else {print("Please insert your email and password")}
    }
   
    @IBAction func signupButtonPressed(_ sender: Any) {
        UIApplication.shared.open(NSURL(string:"https://auth.udacity.com/sign-up")! as URL)
    }
    
}

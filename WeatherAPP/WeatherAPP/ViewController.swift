//
//  ViewController.swift
//  WeatherAPP
//
//  Created by Hilem nur Erdem on 19.12.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func didTapLogIn(_ sender: Any) {
        print("user e-mail is -> \(emailTextField.text ?? "not data for e-mail")\nuser password is -> \(passwordTextField.text ?? "not data for password")")
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "viewController")
        self.navigationController?.pushViewController(nextVC!, animated: true)
    }
    


}


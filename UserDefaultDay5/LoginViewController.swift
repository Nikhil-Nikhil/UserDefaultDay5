//
//  ViewController.swift
//  UserDefaultDay5
//
//  Created by User on 2019-07-04.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var userDetails : [String : String] = ["User":"User", "Nikhil@gmail.com":"pass"]
    var users : String = ""
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var switchRememberMe: UISwitch!
   // @IBOutlet var switchRememberme: UIView!
    @IBOutlet weak var txtPassword1: UITextField!
    @IBOutlet weak var lblrememberme: UILabel!
    @IBOutlet weak var btnsSignup: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func SignupTapped(_ sender: Any) {
        if self.txtEmail.text == "nikhil@gmail.com"
        && self.txtPassword1.text == "n1234"
        {
            if switchRememberMe.isOn
            {
                let userDefault = UserDefaults.standard
                userDefault.set(txtEmail, forKey: "UserEmail")
                userDefault.set(txtPassword1, forKey: "UserPassword")
            }
            else
            {}
           // let sb = UIStoryboard(name:"Main", bundle: nil)
           // let SecondVC = sb.instantiateViewController(withIdentifier: "SecondVC")
        }
        
    }
    @IBAction func unWindlogoutFromAnyScreen(storyboardsegue: UIStoryboardSegue)
    {
        print("logout")
        let s = storyboardsegue.source as! WelcomeViewController
        print(s.lblWelcome.text!)
    }
}


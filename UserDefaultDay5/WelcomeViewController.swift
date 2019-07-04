//
//  WelcomeViewController.swift
//  UserDefaultDay5
//
//  Created by User on 2019-07-04.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
let userDefault = UserDefaults.standard
        if let email = userDefault.string(forKey: "UserEmail")
        {
            lblWelcome.text = "Welcome,\(email)"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

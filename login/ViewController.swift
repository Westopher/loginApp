//
//  ViewController.swift
//  login
//
//  Created by West Kraemer on 3/19/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var forgotPassword: UIButton!
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotPassword {
            segue.destination.navigationItem.prompt = "Forgot User Name"
        }
        else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    @IBAction func forgotUsernameButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "LandingSegue", sender: forgotUsernameButtonPressed)
    }
    
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "LandingSegue", sender: forgotPasswordButtonPressed)
    }

}

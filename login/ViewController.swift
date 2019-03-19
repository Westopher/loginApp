//
//  ViewController.swift
//  login
//
//  Created by West Kraemer on 3/19/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = usernameTextfield.text
    }

}


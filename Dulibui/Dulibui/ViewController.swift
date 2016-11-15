//
//  ViewController.swift
//  Dulibui
//
//  Created by Nguyen Nam Long on 11/13/16.
//  Copyright © 2016 Nguyen Nam Long. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        signUp()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func signUp() {
        FIRAuth.auth()?.createUser(withEmail: "long.nalou@gmail.com", password: "password123", completion: { (user, error) in
            if let user = user {
                print(user.uid)
                print(user.email)
            }
        })
    }


}


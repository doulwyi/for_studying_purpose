//
//  ViewController.swift
//  DogAgeApp
//
//  Created by kanazawa on 04/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    @IBOutlet weak var dogAgeField: UITextField!
    @IBOutlet weak var resultAge: UILabel!
    
    @IBAction func findAge(_ sender: Any) {
        
        var dogAge = Int(dogAgeField.text!)!
        dogAge = dogAge * 7
        
        resultAge.text = "The dog's age is: " + String(dogAge)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}


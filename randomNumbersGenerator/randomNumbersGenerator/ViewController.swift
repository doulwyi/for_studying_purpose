//
//  ViewController.swift
//  randomNumbersGenerator
//
//  Created by kanazawa on 04/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var result: UILabel!
    
    @IBAction func generateNumber(_ sender: Any) {
        
        let randomNumber = arc4random_uniform(200)
        
        result.text = String(randomNumber)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


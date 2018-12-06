//
//  ViewController.swift
//  heads or tails
//
//  Created by kanazawa on 06/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playCoin" {
            let randomNumber = arc4random_uniform(2)
            let viewControllerDestination = segue.destination as! DetailsViewController
            
            viewControllerDestination.randomNumberReceived = Int(randomNumber)
            
        }
    }
    

}


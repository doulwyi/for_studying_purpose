//
//  ViewController.swift
//  User Data Save
//
//  Created by kanazawa on 17/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        UserDefaults.standard.set("blue", forKey: "backgroundColor")
        
//        let text = UserDefaults.standard.object(forKey: "backGroundColor")
//        print(text)
        
//        var array: [String] = ["Lasagne", "Pizza", "Pie"]
//        UserDefaults.standard.set(array, forKey: "foods")
        
        UserDefaults.standard.removeObject(forKey: "foods")
        
        
        let arrayRecovered = UserDefaults.standard.object(forKey: "foods")
        print(arrayRecovered)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  DetailViewController.swift
//  Passing data between views
//
//  Created by kanazawa on 06/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!
    var ReceiveText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labelResult.text = ReceiveText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


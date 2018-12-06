//
//  DetailsViewController.swift
//  heads or tails
//
//  Created by kanazawa on 06/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController {
    
    var randomNumberReceived: Int!
    
    @IBOutlet weak var coinImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if randomNumberReceived == 0{
            coinImageView.image = #imageLiteral(resourceName: "moeda_cara")
        }else{
            coinImageView.image = #imageLiteral(resourceName: "moeda_coroa")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

//
//  ViewController.swift
//  GasOrEthanol
//
//  Created by kanazawa on 04/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ethanolPriceTextField: UITextField!
    @IBOutlet weak var gasPriceTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateFuel(_ sender: Any) {
        
        var ethanolPrice: Double = 0
        var gasPrice: Double = 0
        var priceResult: Double = 0
        
        if let resultEthanol = ethanolPriceTextField.text {
            if resultEthanol != "" {
                if let resultNumber = Double(resultEthanol) {
                    ethanolPrice = resultNumber
                }
            }
        }
        
        if let resultGas = gasPriceTextField.text {
            if resultGas != "" {
                if let resultNumber = Double(resultGas) {
                    gasPrice = resultNumber
                }
            }
        }
        
        priceResult = ethanolPrice / gasPrice
        
        if priceResult >= 0.7 {
            resultLabel.text = "Gas is better"
        }else{
            resultLabel.text = "Ethanol is better"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  My Notes
//
//  Created by kanazawa on 17/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myAnnotation = "myAnnotation"
    @IBOutlet weak var testTextView: UITextView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textRecovered = self.recoveredDataAnnotatio()
        testTextView.text = textRecovered
        
    }
    
    
    @IBAction func saveNote(_ sender: Any) {
        
        if let text = testTextView.text{
            self.saveDataAnnotation(text: text)
            hideKeyboard()
        }
    }

    func saveDataAnnotation(text: String){
        UserDefaults.standard.set(text, forKey: myAnnotation)
    }
    
    func recoveredDataAnnotatio() -> String {
        let textRecovered = UserDefaults.standard.object(forKey: myAnnotation)
        
        if textRecovered != nil{
            return textRecovered as! String
        }else{
            return ""
        }
        
    }
    
    func hideKeyboard(){
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        hideKeyboard()
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


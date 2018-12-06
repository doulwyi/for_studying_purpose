//
//  ViewController.swift
//  phraseOfTheDay
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

    @IBAction func newPhraseGen(_ sender: Any) {
        let randomChoice = Int(arc4random_uniform(4))
        var phrasesArray: [String] = []
        phrasesArray.append("Phrase one")
        phrasesArray.append("Phrase two")
        phrasesArray.append("Phrase three")
        phrasesArray.append("Phrase four")

        result.text = phrasesArray[randomChoice]
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


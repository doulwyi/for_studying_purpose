//
//  ViewController.swift
//  Table View Controller
//
//  Created by kanazawa on 08/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    var data: [String] = ["Lasagne", "Pizza", "Apple Pie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseCell = "reuseCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseCell, for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
    
}


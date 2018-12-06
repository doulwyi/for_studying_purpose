//
//  DetailsMovieViewController.swift
//  My Movies
//
//  Created by kanazawa on 16/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit

class DetailsMovieViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var movie: Movie!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImageView.image = movie.image
        titleLabel.text = movie.title
        descriptionLabel.text = movie.description
        
        
        
    }
    
}

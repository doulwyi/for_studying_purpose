//
//  Movie.swift
//  My Movies
//
//  Created by kanazawa on 09/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit


class Movie{
    
    var title: String!
    var description: String!
    var image: UIImage!
    
    init(title: String, description: String, image:UIImage) {
        self.title = title
        self.description = description
        self.image = image
        
    }
    
}

//
//  ViewController.swift
//  My Movies
//
//  Created by kanazawa on 09/08/17.
//  Copyright © 2017 kanazawa. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var movie: Movie
        
        movie = Movie(title: "007 - Spectre", description: "DescriptionOne", image: #imageLiteral(resourceName: "filme1"))
        movies.append(movie)
        
        movie = Movie(title: "Star Wars", description: "DescriptionTwo", image: #imageLiteral(resourceName: "filme2"))
        movies.append(movie)
        
        movie = Movie(title: "Blunt Force Trauma", description: "DescriptionThree", image: #imageLiteral(resourceName: "filme3"))
        movies.append(movie)
        
        movie = Movie(title: "DeadPool", description: "DescriptionFour", image: #imageLiteral(resourceName: "filme4"))
        movies.append(movie)
        
        movie = Movie(title: "The Revenant", description: "DescriptionFive", image: #imageLiteral(resourceName: "filme5"))
        movies.append(movie)
        
        movie = Movie(title: "Skammerens datter", description: "DescriptionSix", image: #imageLiteral(resourceName: "filme6"))
        movies.append(movie)
        
        movie = Movie(title: "Point Break", description: "DescriptionSeve", image: #imageLiteral(resourceName: "filme7"))
        movies.append(movie)
        
        movie = Movie(title: "Pay The Ghost", description: "DescriptionEight", image: #imageLiteral(resourceName: "filme8"))
        movies.append(movie)
        
        movie = Movie(title: "Tarzan", description: "DescriptionNine", image: #imageLiteral(resourceName: "filme9"))
        movies.append(movie)
        
        movie = Movie(title: "Hardcore", description: "DescriptionTen", image: #imageLiteral(resourceName: "filme10"))
        movies.append(movie)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie: Movie = movies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuse", for: indexPath) as! MovieCell
        cell.movieImageView.image = movie.image
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.description
        
//        cell.movieImageView.layer.cornerRadius = 42
//        cell.movieImageView.clipsToBounds = true
        
        
//        cell.textLabel?.text = movie.title
//        cell.imageView?.image = movie.image
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailMovie" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let movieSelected = self.movies[ indexPath.row ]
                let viewControllerDestiny = segue.destination as! DetailsMovieViewController
                viewControllerDestiny.movie = movieSelected
                
            }
            
        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


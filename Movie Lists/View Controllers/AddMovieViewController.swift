//
//  AddMovieViewController.swift
//  Movie Lists
//
//  Created by Samantha Gatt on 7/28/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

// Removed MovieControllerProtocol since I made movieListController's moviesInList of type MovieController instead of just a [Movie]
class AddMovieViewController: UIViewController, MovieListControllerProtocol {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let title = movieTitleTextField.text else { return }
        let index = 1
        let movieList = movieListController?.movieLists?[index]
        
        // Need to create a movie...
//        movieController?.addMovie(title: title)
        
        // ...and add it to the movies array for the movieList
        // First have to figure out which movie list in the movieListController to add the movie to
        // how to get index?
//        let index = 1
//        let movieList = movieListController?.movieLists?[index]
        
        
    }
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var movieListController: MovieListController?
//    var movieController: MovieController?
}

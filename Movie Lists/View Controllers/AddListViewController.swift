//
//  AddListViewController.swift
//  Movie Lists
//
//  Created by Samantha Gatt on 7/28/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class AddListViewController: UIViewController, MovieListControllerProtocol {
    

    /*
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    */
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowAddMovie" {
            guard var destinationListVC = segue.destination as? MovieListControllerProtocol else { return }
            destinationListVC.movieListController = movieListController
            
//            guard var destinationMovieVC = segue.destination as? MovieControllerProtocol else { return }
//            destinationMovieVC.movieController = movieController
        }
    }

    
    @IBAction func addListButtonTapped(_ sender: Any) {
        guard let name = listNameTextField.text else { return }
        
        // When you add a list it should create an empty array of Movie's as well
        movieListController?.addMovieList(name: name, moviesInList: [])
    }
    
    @IBOutlet weak var listNameTextField: UITextField!
    
    var movieListController: MovieListController?
//    let movieController = MovieController()
}

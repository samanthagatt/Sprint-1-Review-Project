//
//  MovieListController.swift
//  Movie Lists
//
//  Created by Samantha Gatt on 7/29/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation

class MovieListController {
    var movieLists: [MovieList]?
    
    func addMovieList(name: String, moviesInList: [Movie]) {
        let movieList = MovieList(name: name, moviesInList: moviesInList)
        movieLists?.append(movieList)
    }
}

//
//  MovieController.swift
//  Movie Lists
//
//  Created by Samantha Gatt on 7/29/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie]?
    
    func addMovie(title: String) {
        let movie = Movie(title: title, isSeen: false)
        
        movies?.append(movie)
    }
}

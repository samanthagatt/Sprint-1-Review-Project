//
//  MovieListsTabBarViewController.swift
//  Movie Lists
//
//  Created by Samantha Gatt on 7/28/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class MovieListsTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        passMovieListsToChildrenVCs()
    }

    
    func passMovieListsToChildrenVCs() {
        
        guard let vcs = self.viewControllers else { return }
        
        for vc in vcs {
            guard let naviVC = vc as? UINavigationController else { return }
            // naviVC.viewControllers returns an array of all the view controllers in the navi stack
            let childVCs = naviVC.viewControllers
            
            for childVC in childVCs {
                guard var conformingChildVC = childVC as? MovieListControllerProtocol else { return }
                
                conformingChildVC.movieListController = movieListController
            }
        }
    }
    
    let movieListController = MovieListController()
}

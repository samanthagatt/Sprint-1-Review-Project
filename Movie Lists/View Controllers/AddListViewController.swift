//
//  AddListViewController.swift
//  Movie Lists
//
//  Created by Samantha Gatt on 7/28/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

import UIKit

class AddListViewController: UIViewController, MovieListControllerProtocol {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func addListButtonTapped(_ sender: Any) {
        
    }
    
    @IBOutlet weak var listNameTextField: UITextField!
    
    var movieListController: MovieListController?
}

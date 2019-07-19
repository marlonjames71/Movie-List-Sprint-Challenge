//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Marlon Raskin on 7/19/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {


	@IBOutlet weak var textFieldView: UIView!
	@IBOutlet weak var movieTextField: UITextField!
	@IBOutlet weak var addMovieButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
		title = "Add Movie"

    }
    
	@IBAction func addMovieButtonTapped(_ sender: UIButton) {
	}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

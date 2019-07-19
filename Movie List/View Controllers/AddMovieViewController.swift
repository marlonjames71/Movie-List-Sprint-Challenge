//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Marlon Raskin on 7/19/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

protocol AddMovieViewControllerDelegate {
	func addMovie(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

	var delegate: AddMovieViewControllerDelegate?
	var movieController: MovieController?

	@IBOutlet weak var textFieldView: UIView!
	@IBOutlet weak var movieTextField: UITextField!
	@IBOutlet weak var addMovieButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
		title = "Add Movie"

    }
    
	@IBAction func addMovieButtonTapped(_ sender: UIButton) {
		guard let movieTitle = movieTextField.text else { return }
		let movie = Movie(name: movieTitle)
		delegate?.addMovie(movie)
		self.navigationController?.popToRootViewController(animated: true)
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

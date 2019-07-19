//
//  ViewController.swift
//  Movie List
//
//  Created by Marlon Raskin on 7/19/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {

	let movieController = MovieController()

	@IBOutlet weak var tableView: UITableView!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.reloadData()
		title = "Movie List"
		tableView.tableFooterView = UIView()
		navigationController?.navigationBar.barStyle = .black
		navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.1177810126, green: 0.1257176072, blue: 0.1434536638, alpha: 1)
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "ShowAddMovieSegue"{
			guard let addMovieVC = segue.destination as? AddMovieViewController else { return }
		}
		
	}

}

extension MoviesTableViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return movieController.movies.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
		let movie = movieController.movies[indexPath.row]
		cell.movieLabel.text = movie.name
		

		return cell
	}
}

extension MoviesTableViewController: AddMovieViewControllerDelegate {
	func addMovie(_ movie: Movie) {
		movieController.movies.append(movie)
	}
}

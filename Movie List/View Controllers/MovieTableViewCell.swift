//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Marlon Raskin on 7/19/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

protocol MovieTableViewCellDelegate {
	func seenButtonTapped(on cell: MovieTableViewCell)
}

class MovieTableViewCell: UITableViewCell {

	var delegate: MovieTableViewCellDelegate?

	var movie: Movie? {
		didSet {
			updateViews()
		}
	}

	@IBOutlet weak var movieLabel: UILabel!
	@IBOutlet weak var seenButton: UIButton!


	@IBAction func seenButtonTapped(_ sender: UIButton) {
		delegate?.seenButtonTapped(on: self)
		print("\(movie?.hasSeen)")
	}

	private func seenButtonUI() {

	}

	private func updateViews() {
		guard let movie = movie else { return }
		movieLabel.text = movie.name
		movie.hasSeen ? seenButton.setTitle("Seen", for: .normal) : seenButton.setTitle("Not Seen", for: .normal)
	}

}

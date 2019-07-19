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

	override func awakeFromNib() {
		super.awakeFromNib()
		seenButtonUINaturalState()
	}


	@IBAction func seenButtonTapped(_ sender: UIButton) {
		delegate?.seenButtonTapped(on: self)
	}

	private func seenButtonUINaturalState() {
		seenButton.setTitle("Not Seen", for: .normal)
		seenButton.layer.cornerRadius = 8
		seenButton.layer.borderWidth = 1
		seenButton.layer.borderColor = #colorLiteral(red: 0.06629227454, green: 0.06629227454, blue: 0.06629227454, alpha: 1)
		seenButton.backgroundColor = nil
		seenButton.tintColor = #colorLiteral(red: 0.1742581233, green: 0.1742581233, blue: 0.1742581233, alpha: 1)
	}

	private func seenButtonUI(_ hasSeen: Bool) {
		if hasSeen {
			seenButton.setTitle("Seen", for: .normal)
			seenButton.layer.cornerRadius = 8
			seenButton.layer.borderWidth = 0
			seenButton.layer.borderColor = nil
			seenButton.backgroundColor = #colorLiteral(red: 0.1731908114, green: 0.7810738561, blue: 0.5123470879, alpha: 1)
			seenButton.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		} else {
			seenButtonUINaturalState()
		}
	}

	private func updateViews() {
		guard let movie = movie else { return }
		movieLabel.text = movie.name
		seenButtonUI(movie.hasSeen)
	}
}

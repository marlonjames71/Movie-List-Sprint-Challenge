//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Marlon Raskin on 7/19/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

	@IBOutlet weak var movieLabel: UILabel!
	@IBOutlet weak var seenButton: UIButton!
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

	@IBAction func seenButtonTapped(_ sender: UIButton) {
	}

}

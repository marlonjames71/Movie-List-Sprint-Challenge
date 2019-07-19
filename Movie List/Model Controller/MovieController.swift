//
//  MovieController.swift
//  Movie List
//
//  Created by Marlon Raskin on 7/19/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import Foundation


class MovieController {
	var movies: [Movie] = []

	func toggleHasSeen(for movie: Movie) {
		guard let index = movies.firstIndex(of: movie) else { return }
		if movies[index].hasSeen == false {
			movies[index].hasSeen = true
		} else if movies[index].hasSeen == true {
			movies[index].hasSeen = false
		}
	}

	func addMovie(movieTitle: String) {
		let movie = Movie(name: movieTitle)
		movies.append(movie)
	}

	func deleteMovie(movie: Movie) {
		guard let index = movies.firstIndex(of: movie) else { return }
		movies.remove(at: index)
	}
}


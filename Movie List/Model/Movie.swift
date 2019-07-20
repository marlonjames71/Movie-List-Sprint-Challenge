//
//  Movie.swift
//  Movie List
//
//  Created by Marlon Raskin on 7/19/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import Foundation

struct Movie: Equatable, Codable {
	var name: String
	var hasSeen: Bool

	init(name: String, hasSeen: Bool = false) {
		self.name = name
		self.hasSeen = hasSeen
	}
}

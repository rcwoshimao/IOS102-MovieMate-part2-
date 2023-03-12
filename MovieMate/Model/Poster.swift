//
//  Poster.swift
//  MovieMate
//
//  Created by Rebecca Chen on 2023/3/12.
//

import Foundation


struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
}


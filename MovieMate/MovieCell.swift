//
//  MovieCell.swift
//  MovieMate
//
//  Created by Rebecca Chen on 2023/3/2.
//

import UIKit;
import Nuke

class MovieCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.original_title
        movieOverviewLabel.text = movie.overview

        // Load image async via Nuke library image loading helper method
        //https://image.tmdb.org/t/p/w500/
        let posterPath = movie.poster_path
        let ActualPath = "https://image.tmdb.org/t/p/w500/\(posterPath)"
        
        Nuke.loadImage(with: URL(string:ActualPath)!, into: movieImageView)
    }

    
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieOverviewLabel: UILabel!
    
}

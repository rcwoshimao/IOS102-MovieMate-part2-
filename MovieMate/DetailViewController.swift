//
//  DetailViewController.swift
//  MovieMate
//
//  Created by Rebecca Chen on 2023/3/6.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var voteAverageLabel: UILabel!
    @IBOutlet weak var voteTotalLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        let posterPath = movie.poster_path
        let ActualPath = "https://image.tmdb.org/t/p/w500/\(posterPath)"
        
        Nuke.loadImage(with: URL(string:ActualPath)!, into: movieImageView)

        // Set labels with the associated track values.
        movieTitle.text = movie.original_title
        voteAverageLabel.text = String(movie.vote_average)
        voteTotalLabel.text = String(movie.vote_count)
        popularityLabel.text = String(movie.popularity)
        overviewLabel.text = movie.overview

        // Create a date formatter to style our date and convert it to a string
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium

        // Use helper method to convert milliseconds into `mm:ss` string format
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

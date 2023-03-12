//
//  Movie.swift
//  MovieMate
//
//  Created by Rebecca Chen on 2023/2/28.
//

import Foundation

struct Movie : Decodable {
    let original_title : String
    let overview: String
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
    let poster_path: URL
}

struct MoviesResponse :Decodable {
    let results : [Movie]
    
}



//extension Movie{
//
//    //An array of mock tracks
//    static var mockMovies: [Movie]  = [
//        Movie(movieName: "Knock at the Cabin",
//              movieOverview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
//              voteAverage: 6.6,
//              voteCount: 778,
//              popularity: 4969.06,
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!),
//        Movie(movieName: "Black Panther: Wakanda Forever",
//              movieOverview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
//              voteAverage: 7.4,
//              voteCount: 3783,
//              popularity: 2949.117,
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!),
//
//        Movie(movieName: "Puss in Boots: The Last Wish",
//              movieOverview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
//              voteAverage: 8.4,
//              voteCount: 4277,
//              popularity: 3278.515,
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!),
//        Movie(movieName: "Plane",
//              movieOverview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
//              voteAverage: 6.9,
//              voteCount: 770,
//              popularity: 2618.646,
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!),
//
//        Movie(movieName: "Little Dixie",
//              movieOverview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
//              voteAverage: 6.4,
//              voteCount: 46,
//              popularity: 2015.068,
//              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500//cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!),
//
//    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
//}



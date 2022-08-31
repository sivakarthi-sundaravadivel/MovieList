//
//  Movie.swift
//  FavMov
//
//  Created by s.sivakarthi on 17/08/2022.
//

import Foundation

struct Movie {
    
    
    let movieTitle: String
    let imageName: String
    let movieGenre: String
    let releaseYear: Int
    let description: String
    let movieTrailerUrl: String
    
    static func createMovie() -> [Movie] {
        
        var movies: [Movie] = []
        
        let movieTitles = DataManager.shared.movieTitles
        let imageNames = DataManager.shared.imageNames
        let movieGenres = DataManager.shared.movieGenres
        let releaseYears = DataManager.shared.releaseYears
        let descriptions = DataManager.shared.descriptions
        let movieTrailerUrls = DataManager.shared.movieTrailerUrls
        
        for i in 0..<movieTitles.count{
          
            
            let movie = Movie(movieTitle: movieTitles[i], imageName: imageNames[i], movieGenre: movieGenres[i], releaseYear: releaseYears[i], description: descriptions[i], movieTrailerUrl: movieTrailerUrls[i])
            
            movies.append(movie)
            
        }
        return movies
    }  
    
    
}

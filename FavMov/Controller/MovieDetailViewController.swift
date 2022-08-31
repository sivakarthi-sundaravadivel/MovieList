//
//  MovieDetailViewController.swift
//  FavMov
//
//  Created by s.sivakarthi on 17/08/2022.
//

import UIKit
import WebKit

class MovieDetailViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var movieDetailPosterImage: UIImageView!
    @IBOutlet var movieDetailTitle: UILabel!
    @IBOutlet var movieDetailYear: UILabel!
    @IBOutlet var movieDetailGener: UILabel!
    @IBOutlet var movieDetailTrailerButton: UIButton!
    @IBOutlet var movieDetailDescription: UILabel!
    @IBOutlet var movieDetailTrailerWK: WKWebView!
  
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        if movie != nil {
            movieDetailPosterImage.image = UIImage(named: movie?.imageName ?? "The Godfather (1972) - Drama")
            movieDetailTitle.text = movie?.movieTitle ?? "The Godfather (1972) - Drama"
            movieDetailYear.text = String(movie?.releaseYear ?? 1996)
            movieDetailGener.text = movie?.movieGenre ?? ""
            movieDetailDescription.text = movie?.description ?? ""
        }
    }
    
    @IBAction func openMovieTrailer(_ sender: Any) {
        
        movieDetailDescription.isHidden = true
        movieDetailTrailerButton.isHidden = true
        
        let url = URL(string: movie!.movieTrailerUrl)!
        movieDetailTrailerWK.load(URLRequest(url: url))
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

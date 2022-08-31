//
//  DetailViewController.swift
//  FavMov
//
//  Created by s.sivakarthi on 17/08/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var trackLabelName: UILabel!
    @IBOutlet var trackImageView: UIImageView!

    var song: Song?

     override func viewDidLoad() {
        super.viewDidLoad()


         if song != nil {
             trackImageView.image = UIImage(named: song?.cover ?? "Rammstein - rammstein")
             trackLabelName.text = song?.track ?? "Rammstein - rammstein" + "\(song?.album ?? "Rammstein - rammstein ")"
         }
         
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

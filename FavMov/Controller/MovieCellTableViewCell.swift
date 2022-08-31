 //
//  MovieCellTableViewCell.swift
//  FavMov
//
//  Created by s.sivakarthi on 17/08/2022.
//

import UIKit

class MovieCellTableViewCell: UITableViewCell {

    @IBOutlet var MovieImage: UIImageView!
    
    
    @IBOutlet var MovieTitel: UILabel!
    
    
    @IBOutlet var MovieYear: UILabel!
    
    
    @IBOutlet var MovieGener: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}

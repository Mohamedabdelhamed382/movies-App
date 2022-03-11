//
//  PopularMoviesCollectionViewCell.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 10/03/2022.
//

import UIKit
import Kingfisher
class PopularMoviesCollectionViewCell: UICollectionViewCell, PopularMoviesCellView {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var originalTitle: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var voteAverage: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    func displayMovieImage(_ imagePath: String) {
        movieImage.kf.setImage(with: "\(ImageURl.imageURL)\(imagePath)".asUrl)
    }
    
    func displayOriginalTitle(_ title: String) {
        originalTitle.text = title
    }
    
    func displayReleaseDate(_ date: String) {
        releaseDate.text = date
    }
    
    func displayVoteAverage(_ vote: String) {
        voteAverage.text = vote
    }
    

}

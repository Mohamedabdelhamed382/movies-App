//
//  MovieDetails + PrsenterDelegate .swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 11/03/2022.
//

import Foundation
import Kingfisher
import ProgressHUD

extension MovieDetailsViewController: MovieDetailsView {
    
    func pathData(model: MovieDetailsPathDataModel) {
        backgroundMovieImage.kf.setImage(with: "\(ImageURl.imageURL)\(model.backgroundMovieImage ?? "")".asUrl)
        posterMovieImage.kf.setImage(with: "\(ImageURl.imageURL)\(model.posterMovieImage ?? "")".asUrl)
        peopleWatchingNumberLabel.text = model.peopleWatchingNumberLabel
        genresLable.text = model.genresLable
        overviewMovie.text = model.overviewMovie
        movieNameTitle.text = model.movieNameTitle
        voteAverageIntegerPart.text = model.voteAverageIntegerPart
        voteAverageFractionalPart.text = model.voteAverageFractionalPart
    }
    
    func showSuccess() {
        ProgressHUD.showSuccess()
    }
    
    func showIndicator() {
        ProgressHUD.show()
    }
    
    func hideIndicator() {
        ProgressHUD.dismiss()
    }
    
    func featchingDataSuccess() {
        collctionView.reloadData()
    }
    
    func showError(error: String) {
        ProgressHUD.showError(error)
    }
    
}

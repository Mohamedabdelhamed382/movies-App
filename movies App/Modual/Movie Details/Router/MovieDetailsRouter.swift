//
//  MovieDetailsRouter.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 12/03/2022.
//

import Foundation
import UIKit
class MovieDetailsVCRouter {
    
    class func createMovieDetailsVC(id : Int ) -> UIViewController {
        
        let movieDetailsVC = MovieDetailsViewController()
        if let movieDetailsView = movieDetailsVC as? MovieDetailsView {
            let movieDetailsPresenter = MovieDetailsPresenter(view: movieDetailsView, id: id)
            movieDetailsView.presnter = movieDetailsPresenter
        }
        
        return movieDetailsVC
        
    }
    
    
    
}

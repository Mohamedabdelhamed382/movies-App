//
//  PopularMoviesVCRouter.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 12/03/2022.
//

import Foundation
import UIKit

class PopularMoviesVCRouter {
    
    class func  createpopularMoviesVC() -> UIViewController {
        let popularMoviesView  = PopularMoviesViewController() as PopularMoviesView
        let router = PopularMoviesVCRouter()
        let popularMoviesPresenter = PopularMoviesPresenter(view: popularMoviesView, router: router )
        popularMoviesView.presenter = popularMoviesPresenter
        return popularMoviesView as! UIViewController
    }
    
    func navigateToMovieDetailsScreen(forom view: PopularMoviesView, id: Int) {
        let movieDetailsView = MovieDetailsVCRouter.createMovieDetailsVC(id: id)
        if let vc = view as? UIViewController {
            vc.navigationController?.pushViewController(movieDetailsView, animated: true)
        }
    }
    
}

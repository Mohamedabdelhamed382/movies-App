//
//  Protocols.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 10/03/2022.
//

import Foundation

protocol PopularMoviesView: class {
    var presenter : PopularMoviesPresenter?{ get set }
    func showIndicator()
    func hideIndicator()
    func featchingDataSuccess()
    func showError(error: String)
    func showSuccess()
}

protocol PopularMoviesCellView {
    func displayMovieImage(_ imagePath: String)
    func displayOriginalTitle(_ title: String)
    func displayReleaseDate(_ date: String)
    func displayVoteAverage(_ Vote: String)
}



//
//  PopularMoviesPresenter.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 10/03/2022.
//

import Foundation

class PopularMoviesPresenter {
    
    private weak var view :PopularMoviesView?
    private var data = PopularMovies().results
    
    init(view: PopularMoviesView) {
         self.view = view
    }
    
    func viewDidLoad(){
        bindingData()
    }
 
    func bindingData(){
        view?.showIndicator()
        ApiService.Shared.fetchPopularMovies{ [weak self] data,error,errorResponse  in
            guard let self = self else {return}
            self.view?.hideIndicator()
            if let error = error {
                self.view?.showError(error: error.localizedDescription)
            }else if let error = errorResponse {
                self.view?.showError(error: error.statusMessage ?? "error in parsing" )
            }else {
                self.data = data?.results
                self.view?.featchingDataSuccess()
                self.view?.showSuccess()
                
            }
            
        }
    }
    
    func getPopularMoviesCount() -> Int {
        return data?.count ?? 0
    }
    
    func configure(cell: PopularMoviesCellView, for index: Int) {
        let cellData = data?[index]
        cell.displayMovieImage(cellData?.posterPath ?? "")
        cell.displayOriginalTitle(cellData?.originalTitle ?? "no name")
        cell.displayReleaseDate(cellData?.releaseDate ?? "")
        cell.displayVoteAverage("\(cellData?.voteAverage ?? 0.0)")
    }
    
    func didSelectItem(index: Int) {
        let cellData = data?[index]
        view?.navigateToMoviesDetailsScreen(id: cellData?.id ?? 0)
    }
    
}

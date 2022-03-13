//
//  MovieDetailsPresenter.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 11/03/2022.
//

import Foundation
class MovieDetailsPresenter {
    
    private weak var view: MovieDetailsView?
    private var dataFromApi:MovieDetailsModel?
    {
        didSet{
            pathData()
        }
    }
    private var id: Int
    
    init(view: MovieDetailsView?, id: Int) {
        self.view = view
        self.id = id
    }
    
    func viewDidLoad(){
        bindingData()
    }
    
    func bindingData(){
        view?.showIndicator()
        ApiService.Shared.fetchMovieDetails(id: id, complation: { [weak self] data,error,errorResponse  in
            guard let self = self else {return}
            self.view?.hideIndicator()
            if let error = error {
                self.view?.showError(error: error.localizedDescription)
            }else if let error = errorResponse {
                self.view?.showError(error: error.statusMessage ?? "error in parsing" )
            }else {
                self.dataFromApi = data!
                self.view?.featchingDataSuccess()
                self.view?.showSuccess()
            }
        })
    }
    
    
    func pathData() {
        
        let names = dataFromApi?.genres.map{$0.compactMap{$0.name}}
        guard let name = names else { return}
        let formattedArray = name.joined(separator: ",")
        
        var data = MovieDetailsPathDataModel()
        data.movieNameTitle = dataFromApi?.originalTitle
        data.backgroundMovieImage = dataFromApi?.backdropPath
        data.posterMovieImage = dataFromApi?.posterPath
        data.peopleWatchingNumberLabel = "\(dataFromApi?.runtime ?? 0)"
        data.genresLable = formattedArray
        data.overviewMovie = dataFromApi?.overview
        data.voteAverageIntegerPart = dataFromApi?.voteAverage?.integerPart()
        data.voteAverageFractionalPart = ".\(dataFromApi?.voteAverage?.fractionalPart() ?? "")"
        view?.pathData(model: data)
    }
    
    func configure(cell: ProductionCompaniesCollectionCellView, for index: Int) {
        
        
        let productionCompanies = dataFromApi?.productionCompanies
        
       // cell.setCompanyLogoPath(productionCompanies?[index].logoPath ?? "")
        //print(productionCompanies?[index].logoPath ?? "")
        
//        cell.setCompanyName(dataFromApi?.productionCompanies?.map{$0.name}[index] ?? "")
//        cell.setCompanyOriginCountry(dataFromApi?.productionCompanies?.map{$0.originCountry}[index] ?? "")
        
    }

    
}

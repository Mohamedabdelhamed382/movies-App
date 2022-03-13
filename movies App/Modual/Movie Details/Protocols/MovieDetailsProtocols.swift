//
//  Protocols.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 11/03/2022.
//

import Foundation

protocol MovieDetailsView: class {
    var presnter : MovieDetailsPresenter? {get set }
    func showIndicator()
    func hideIndicator()
    func featchingDataSuccess()
    func showError(error: String)
    func showSuccess()
    func pathData(model: MovieDetailsPathDataModel)
}

protocol ProductionCompaniesCollectionCellView {
    func setCompanyLogoPath(_ imagePath: String)
    func setCompanyName(_ title: String)
    func setCompanyOriginCountry(_ country: String)
}



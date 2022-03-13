//
//  PopularMovies + PrsenterDelegate .swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 10/03/2022.
//

import Foundation
import ProgressHUD

extension PopularMoviesViewController : PopularMoviesView {
   
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

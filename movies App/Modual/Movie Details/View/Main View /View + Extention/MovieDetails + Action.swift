//
//  MovieDetails + Action.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 13/03/2022.
//

import Foundation
import UIKit
extension MovieDetailsViewController {
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

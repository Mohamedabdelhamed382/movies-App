//
//  ProductionCompaniesCollectionViewCell.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 11/03/2022.
//

import UIKit

class ProductionCompaniesCollectionViewCell: UICollectionViewCell, ProductionCompaniesCollectionCellView {
    @IBOutlet weak var companyLogoPath: UIImageView!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var companyOriginCountry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setCompanyLogoPath(_ imagePath: String) {
        companyLogoPath.kf.setImage(with: "\(ImageURl.imageURL)\(imagePath)".asUrl)
    }
    
    func setCompanyName(_ title: String) {
        companyName.text = title
    }
    
    func setCompanyOriginCountry(_ country: String) {
        companyOriginCountry.text = country
    }
    
    
    
}

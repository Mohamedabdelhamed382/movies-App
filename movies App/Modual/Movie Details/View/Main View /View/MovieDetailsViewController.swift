//
//  MovieDetailsViewController.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 11/03/2022.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    @IBOutlet weak var collctionView:UICollectionView!
    @IBOutlet weak var movieNameTitle: UILabel!
    @IBOutlet weak var backgroundMovieImage: UIImageView!
    @IBOutlet weak var posterMovieImage: UIImageView!
    @IBOutlet weak var peopleWatchingNumberLabel: UILabel!
    @IBOutlet weak var peopleWatchingTitleLabel: UILabel!
    @IBOutlet weak var genresLable: UILabel!
    @IBOutlet weak var overviewMovie: UITextView!
    @IBOutlet weak var productionCompaniesLabel: UILabel!
    @IBOutlet weak var voteAverageIntegerPart: UILabel!
    @IBOutlet weak var voteAverageFractionalPart: UILabel!
    
    
    var presnter: MovieDetailsPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presnter?.viewDidLoad()
        registerCell()
        configure()
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    @IBAction func playVideoButton(_ sender: Any) {
    }
    
}

//
//  PopularMoviesViewController.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 09/03/2022.
//

import UIKit

class PopularMoviesViewController: UIViewController {
    
    @IBOutlet weak var collctionView:UICollectionView!
    
    var presenter: PopularMoviesPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = PopularMoviesPresenter(view: self)
        presenter.viewDidLoad()
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
    
    
    
}


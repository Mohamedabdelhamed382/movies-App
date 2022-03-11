//
//  Interactor .swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 10/03/2022.
//

import Foundation
import Alamofire

extension ApiService {
    func fetchPopularMovies(complation: @escaping (PopularMovies?,Error?,ErrorResponse?) -> Void) {
        var url = URLComponents(string: BaseURLs.baseUrl + Route.popular)
        url?.queryItems = [URLQueryItem(name: ApiKey.apiKey, value:  ApiKey.apiValue)]
        ApiService.Shared.fetchData(URL: url?.url as! URLConvertible, params: nil, headers: nil, method: .get) { (popularMovies:PopularMovies?, errorResponse: ErrorResponse?, error) in
            if let error = error {
                complation(nil,error,nil)
            }else if let error = errorResponse {
                complation(nil,nil,error)
            }else {
                guard let data = popularMovies else {return}
                complation((data), nil, nil)
            }
        }
    }
}

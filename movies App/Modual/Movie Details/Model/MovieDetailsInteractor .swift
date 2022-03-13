//
//  Interactor .swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 11/03/2022.
//

import Foundation
import Alamofire

extension ApiService {
    func fetchMovieDetails(id: Int,complation: @escaping (MovieDetailsModel?,Error?,ErrorResponse?) -> Void) {
        var url = URLComponents(string: BaseURLs.baseUrl + "/\(id)")
        url?.queryItems = [URLQueryItem(name: ApiKey.apiKey, value:  ApiKey.apiValue)]
        fetchData(URL: url?.url as! URLConvertible, params: nil, headers: nil, method: .get) { (movieDetailsModel:MovieDetailsModel?, errorResponse: ErrorResponse?, error) in
            if let error = error {
                complation(nil,error,nil)
            }else if let error = errorResponse {
                complation(nil,nil,error)
            }else {
                guard let data = movieDetailsModel else {return}
                complation((data), nil, nil)
            }
        }
    }
}

//
//  API Service.swift
//  movies App
//
//  Created by MOHAMED ABD ELHAMED AHMED on 10/03/2022.
//

import Foundation
import Alamofire

class ApiService {
    
    // MARK: - Attributes
    /// Signalton Instance
    static let Shared = ApiService()
    
    // MARK: - Init
    private init() {}

    // MARK: - Methods
    /// Get Data from API
    /// - Parameters:
    ///   - url: API endPoint
    ///   - completion: completion handler for retriving api response
     func fetchData<T:Codable, E:Codable>(URL: URLConvertible, params : Parameters?, headers: HTTPHeaders?, method: HTTPMethod?,  completion: @escaping (T?, E?, Error?) -> Void){
        
        AF.request(URL, method: method ?? .get, parameters: params , encoding: JSONEncoding.default , headers: headers).validate(statusCode: 200..<300).responseJSON { (response) in
            switch response.result {
            case .success(_):
                guard let data = response.data else {return}
                do{
                    let data = try JSONDecoder().decode(T.self, from: data)
                    completion(data,nil,nil)
                }catch (let error){
                    print(error)
                    completion(nil,nil, error)
                }
            case .failure(let error):
                let statusCode = response.response?.statusCode ?? 0
                if statusCode > 300 {
                    guard let data = response.data else {return}
                    do{
                        let errorResponse  = try JSONDecoder().decode(E.self, from: data)
                        completion(nil,errorResponse,nil)
                    }catch (let error){
                        print(error)
                        completion(nil,nil, error)
                    }
                }else {
                    completion(nil,nil,error)
                }
            }
            
        }
    }
}

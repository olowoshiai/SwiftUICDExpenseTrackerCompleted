//
//  NetworkManager.swift
//  ExpenseTracker
//
//  Created by Aisha on 7/28/22.
//  Copyright © 2022 Alfian Losari. All rights reserved.
//

import Foundation

class NetworkManger {
    static let shared = NetworkManger()
    
    func POST(currencyData: Currency, completion: @escaping (Result<CurrencyResponse, CurrencyError>) -> Void) {
        guard let url = URL(string: "https://elementsofdesign.api.stdlib.com/aavia-currency-converter@dev/") else { return }
        guard let jsonData = try? JSONEncoder().encode(currencyData) else {
                 print("Error: Trying to convert model to JSON data")
                 return
             }
        
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.httpBody = jsonData

        URLSession.shared.dataTask(with: request) { data, request, error in
            guard error == nil else {
                completion(.failure(.requestError))
                return
            }
            
            guard let data = data else {
                completion(.failure(.requestError))
                return
            }
            
            do {
                //completion(.success(<#T##CurrencyResponse#>))
                
            } catch {
                //completion(.failure(.requestError))
                return
            }
            
        }.resume()
    }
}

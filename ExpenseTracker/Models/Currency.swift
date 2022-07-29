//
//  Currency.swift
//  ExpenseTracker
//
//  Created by Aisha on 7/28/22.
//  Copyright © 2022 Alfian Losari. All rights reserved.
//

import Foundation

struct Currency: Codable {
    let amount: Double
    let toCurrency: String
    let fromCurrency: String
    
    enum CodingKeys: String, CodingKey {
        case amount
        case toCurrency = "to_currency"
        case fromCurrency  = "from_currency"
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(amount, forKey: .amount)
        try container.encode(toCurrency, forKey: .toCurrency)
        try container.encode(fromCurrency, forKey: .fromCurrency)
    }
}

struct CurrencyResponse: Codable {
    let amount: Double
    let rate: Double
}


enum CurrencyError: String, Error {
    case requestError = "Invalid request. Please try again."
}

//
//  Converter.swift
//  CryptoConverter
//
//  Created by Бейбарыс Шагай on 10/12/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import Foundation
class Converter{
    let baseQuote: Quote
    
    public init(baseQuote:Quote){
        self.baseQuote = baseQuote
    }
    
    func convert(convertQuote:Quote,amount: Double) -> Double {
        // base quote - ол быздын валютамыз
        // convert quote - осы валютага айналдыру керекпыз
        // amount, base quote-тын колчествосы
        
        let result = amount * Double(convertQuote.price) / Double(baseQuote.price)
        return result
    }
}

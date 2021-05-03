//
//  QuoteProvider.swift
//  CryptoConverter
//
//  Created by Бейбарыс Шагай on 10/12/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import Foundation

class QuoteProvider {
    let names = ["BTC", "ETH", "USDT", "XRP", "XTZ"]
    
    func generateQuotes() -> [Quote] {
        let quotes = names.map { name -> Quote in
            return Quote(name: name, price: Int.random(in: 0...100))
        }
        return quotes
    }
}

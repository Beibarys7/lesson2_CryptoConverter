//
//  ViewController.swift
//  CryptoConverter
//
//  Created by Бейбарыс Шагай on 10/10/20.
//  Copyright © 2020 Бейбарыс Шагай. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var quotesLabel: UILabel!
    
    var baseQuote: Quote? // типын көрсетім baseQuote degen svoistva bar Quote type
    var myQuotes: [Quote]?
    let amount: Double = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // MARK: - Test 2
        let qP = QuoteProvider()
        myQuotes = qP.generateQuotes()
        print("For басталды")
        for quote in myQuotes ?? [] {
            print("Казир бизде - \(quote.name)")
            if quote.name == "BTC" {
                print("\(quote.name) - BTC тен!!!")
                self.baseQuote = quote
            } else {
                print("\(quote.name) - BTC тен емес")
            }
        }
        print("For аякталды")
    }
    
    @IBAction func Generatebtn(_ sender: UIButton, forEvent event: UIEvent) {
        if let baseQ = baseQuote {
            let converter = Converter(baseQuote: baseQ)
            // "ETH" -> 123
            var result = ""
            for quote in myQuotes ?? [] {
                
                let convertedResult = converter.convert(convertQuote: quote, amount: amount)
                let formattedResult = "name:\(quote.name) - price:\(convertedResult) \n"
                result = result + formattedResult
            }
            print(result)
            quotesLabel.text = result
        } else {
            print("Значение жок, nil келып тур")
        }
    }
}


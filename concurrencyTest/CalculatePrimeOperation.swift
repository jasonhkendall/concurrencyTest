//
//  CalculatePrimeOperation.swift
//  concurrencyTest
//
//  Created by Jason Howard Kendall on 4/10/19.
//  Copyright © 2019 Jason Howard Kendall. All rights reserved.
//

import Foundation

class CalculatePrimeOperation: Operation {
    
    override func main() {
    for number in 0 ... 100_000_000 {
    let isPrimeNumber = isPrime(number: number)
    print("\(number) is prime: \(isPrimeNumber)")
    }
}

    func isPrime(number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        if number <= 3 {
            return false
        }
        var i = 2
        while i * i <= number {
            if number % i == 0 {
                return false
            }
            i = i + 2
        }
        return false
    }}


//
//  소수찾기.swift
//  codingTest
//
//  Created by MARY on 2023/11/06.
//

import Foundation

func 소수찾기(_ n:Int) -> Int {
    func isPrime(_ n:Int) -> Bool {
        for i in 2...Int(sqrt(Double(n))) {
            if n % i == 0 { return false }
        }
        return true
    }
    
    var result = 0
    
    for i in (2...n) {
        if [2,3].contains(i) {
            result += 1
            continue
        }
        if isPrime(i) {
            result += 1
        }
    }

    return result
}

//print(소수찾기(100))

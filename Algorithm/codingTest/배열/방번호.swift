//
//  방번호.swift
//  codingTest
//
//  Created by MARY on 2023/11/06.
//

import Foundation

func 방번호() {
    let input = readLine()!
    var array = Array(repeating: 0, count: 10)

    for i in input {
        array[Int(String(i))!] += 1
    }

    array[6] = Int(ceil(Double(array[6] + array[9])/2.0))
    array[9] = 0

    print(array.max()!)
}

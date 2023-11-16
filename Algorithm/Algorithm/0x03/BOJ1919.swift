//
//  BOJ1919.swift
//  Algorithm
//
//  Created by Erick on 2023/11/08.
//  애너그램 만들기: https://www.acmicpc.net/problem/1919
//

import Foundation

let first = readLine()!
let second = readLine()!

var result = 0
var firstList = Array(repeating: 0, count: 26)
var secondList = Array(repeating: 0, count: 26)

for alph in first {
    let index = Int(alph.asciiValue!) - 97
    
    firstList[index] += 1
}

for alph in second {
    let index = Int(alph.asciiValue!) - 97
    
    secondList[index] += 1
}

for i in 0..<26 {
    result += abs(firstList[i] - secondList[i])
}

print(result)

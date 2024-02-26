//
//  BOJ11501.swift
//  Algorithm
//
//  Created by Erick on 2/23/24.
//  주식: https://www.acmicpc.net/problem/11501
//

let t = Int(readLine()!)!
var result: [String] = []

for _ in 0..<t {
    let _ = Int(readLine()!)!
    let prices = readLine()!.split(separator: " ").compactMap { Int($0) }
    var max = 0
    var sum = 0

    for price in prices.reversed() {
        if price > max {
            max = price
        } else {
            sum += max - price
        }
    }

    result.append(String(sum))
}

print(result.joined(separator: "\n"))

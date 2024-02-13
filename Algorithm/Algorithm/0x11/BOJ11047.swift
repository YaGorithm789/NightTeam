//
//  BOJ11047.swift
//  Algorithm
//
//  Created by Erick on 2024/02/13.
//  동전 0: https://www.acmicpc.net/problem/11047
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
var k = input[1]
var coins: [Int] = []
var lastCoin = 0
var result = 0

for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}

lastCoin = coins.removeLast()

while k >= 1 {
    if lastCoin > k {
        lastCoin = coins.removeLast()
    } else {
        let proportion = k / lastCoin
        k -= lastCoin * proportion
        result += proportion
    }
}

print(result)

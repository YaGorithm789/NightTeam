//
//  BOJ2457.swift
//  Algorithm
//
//  Created by Erick on 2/23/24.
//  공주님의 정원: https://www.acmicpc.net/problem/2457
//

let n = Int(readLine()!)!
var flowers: [(Int, Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let start = input[0] * 100 + input[1]
    let end = input[2] * 100 + input[3]

    if end >= 301 {
        flowers.append((start, end))
    }
}

flowers.sort(by: { $0.0 < $1.0 })

var start = 301
var end = 0
var result = 0

for i in 0..<n {
    guard start <= 1130 else {
        break
    }

    guard flowers[i].0 <= start else {
        result = 0
        break
    }

    if flowers[i].1 > end {
        end = flowers[i].1
    }

    if i == n - 1 {
        if end > 1130 {
            result += 1
            break
        } else {
            result = 0
            break
        }
    } else if flowers[i+1].0 > start {
        result += 1
        start = end
    }
}

print(result)

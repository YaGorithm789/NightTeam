//
//  BOJ15903.swift
//  Algorithm
//
//  Created by Erick on 2/26/24.
//  카드 합체 놀이: https://www.acmicpc.net/problem/15903
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]

var cards = readLine()!.split(separator: " ").compactMap { Int($0) }

for _ in 0..<m {
    cards.sort()
    let sum = cards[0] + cards[1]
    cards[0] = sum
    cards[1] = sum
}

print(cards.reduce(0, +))

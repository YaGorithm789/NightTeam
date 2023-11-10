//
//  BOJ10811.swift
//  Algorithm
//
//  Created by Erick on 2023/11/10.
//  바구니 뒤집기: https://www.acmicpc.net/problem/10811
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var numList: [String] = []

for num in 1...input.first! {
    numList.append(String(num))
}

for _ in 1...input.last! {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let startIndex = input.first! - 1
    let lastIndex = input.last! - 1
    
    numList[startIndex...lastIndex].reverse()
}

print(numList.joined(separator: " "))

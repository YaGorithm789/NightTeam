//
//  BOJ1546.swift
//  Algorithm
//
//  Created by Erick on 2023/11/10.
//  평균: https://www.acmicpc.net/problem/1546
//

let input = Int(readLine()!)!
var scoreList = readLine()!.split(separator: " ").compactMap { Double($0) }
let maxScore = scoreList.max()!

for index in 0..<scoreList.count {
    scoreList[index] = scoreList[index] / maxScore * 100
}

print(scoreList.reduce(0.0) { $0 + $1 } / Double(scoreList.count))

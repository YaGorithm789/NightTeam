//
//  BOJ4883.swift
//  Algorithm
//
//  Created by Erick on 2024/02/10.
//  삼각 그래프: https://www.acmicpc.net/problem/4883
//

var result: [Int] = []

while true {
    let n = Int(readLine()!)!
    var dp = Array(repeating: Array(repeating: 0, count: 3), count: n)
    var graph: [[Int]] = []
    
    if n == 0 {
        break
    }
    
    for _ in 0..<n {
        graph.append(readLine()!.split(separator: " ").compactMap { Int($0) })
    }
    
    dp[0][0] = Int.max
    dp[0][1] = graph[0][1]
    dp[0][2] = graph[0][1] + graph[0][2]
    
    for i in 1..<n {
        dp[i][0] = min(dp[i - 1][0], dp[i - 1][1]) + graph[i][0]
        dp[i][1] = min(dp[i - 1][0], dp[i - 1][1], dp[i - 1][2], dp[i][0]) + graph[i][1]
        dp[i][2] = min(dp[i - 1][1], dp[i - 1][2], dp[i][1]) + graph[i][2]
    }
    
    result.append(dp[n-1][1])
}

for (i, e) in result.enumerated() {
    print("\(i+1). \(e)")
}

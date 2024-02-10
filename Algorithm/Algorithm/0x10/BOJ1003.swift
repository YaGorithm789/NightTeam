//
//  BOJ1003.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  피보나치 함수: https://www.acmicpc.net/problem/1003
//

let t = Int(readLine()!)!
var result: [String] = []

for _ in 0..<t {
    let n = Int(readLine()!)!
    var dp = Array(repeating: [0, 0], count: 41)
    dp[0] = [1, 0]
    dp[1] = [0, 1]
    dp[2] = [1, 1]

    for i in 3..<41 {
        dp[i] = [dp[i-1][0] + dp[i-2][0], dp[i-1][1] + dp[i-2][1]]
    }

    result.append(dp[n].map { String($0) }.joined(separator: " "))
}

result.forEach {
    print($0)
}

//
//  BOJ9251.swift
//  Algorithm
//
//  Created by Erick on 2024/01/28.
//  LCS: https://www.acmicpc.net/problem/9251
//

let str1 = readLine()!.map { String($0) }
let str2 = readLine()!.map { String($0) }

var dp = Array(repeating: [Int](repeating: 0, count: str2.count + 1), count: str1.count + 1)

for i in 1...str1.count {
    for j in 1...str2.count {
        if str1[i-1] == str2[j-1] {
            dp[i][j] = dp[i-1][j-1] + 1
        } else {
            dp[i][j] = max(dp[i-1][j], dp[i][j-1])
        }
    }
}

print(dp[str1.count][str2.count])

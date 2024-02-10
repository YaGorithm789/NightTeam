//
//  BOJ11055.swift
//  Algorithm
//
//  Created by Erick on 2024/01/25.
//  가장 큰 증가하는 부분 수열: https://www.acmicpc.net/problem/11055
//

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").compactMap { Int($0) }
var dp = Array(repeating: 0, count: n)
dp[0] = nums[0]

for i in 0..<n {
    for j in 0..<i {
        if nums[i] > nums[j] {
            dp[i] = max(nums[i] + dp[j], dp[i])
        } else {
            dp[i] = max(nums[i], dp[i])
        }
    }
}

print(dp.max()!)

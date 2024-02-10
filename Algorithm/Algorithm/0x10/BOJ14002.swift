//
//  BOJ14002.swift
//  Algorithm
//
//  Created by Erick on 2024/02/01.
//  가장 긴 증가하는 부분 수열 4: https://www.acmicpc.net/problem/14002
//

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").compactMap { Int($0) }
var dp = Array(repeating: 1, count: n)

for i in 0..<n {
    for j in 0..<i {
        if nums[i] > nums[j] {
            dp[i] = max(dp[j] + 1, dp[i])
        }
    }
}

var maxNum = dp.max()!
var result: [String] = []

for i in stride(from: n-1, through: 0, by: -1) {
    if dp[i] == maxNum {
        result.insert(String(nums[i]), at: 0)
        maxNum -= 1
    }
}

print(result.count)
print(result.joined(separator: " "))

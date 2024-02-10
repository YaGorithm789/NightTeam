//
//  BOJ2910.swift
//  Algorithm
//
//  Created by Erick on 2024/01/09.
//  빈도 정렬: https://www.acmicpc.net/problem/2910
//

let _ = readLine()!
var nums = readLine()!.split(separator: " ").compactMap { Int($0) }
var numsDic: [Int: Int] = [:]
var numsSet: [Int] = []
var result: [String] = []

nums
    .forEach {
        if !numsSet.contains($0) { numsSet.append($0) }
        numsDic[$0, default: 0] += 1
    }

numsSet
    .sorted { numsDic[$0]! > numsDic[$1]! }
    .forEach {
        for _ in 0..<numsDic[$0]! {
            result.append(String($0))
        }
    }

print(result.joined(separator: " "))

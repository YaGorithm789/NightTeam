//
//  BOJ1181.swift
//  Algorithm
//
//  Created by Erick on 2024/01/08.
//  단어 정렬: https://www.acmicpc.net/problem/1181
//

let n = Int(readLine()!)!
var nums = Set<String>()

for _ in 0..<n {
    nums.insert(readLine()!)
}

let result = nums
    .sorted(by: { $0 < $1 })
    .sorted(by: { $0.count < $1.count })
    .joined(separator: "\n")

print(result)

// MARK: - 튜플 사용
//let n = Int(readLine()!)!
//var nums = Set<String>()
//
//for _ in 0..<n {
//    nums.insert(readLine()!)
//}
//
//let tuple = nums
//    .map { ($0.count, $0)}
//
//let result = tuple
//    .sorted(by: { $0.1 < $1.1 })
//    .sorted(by: { $0.0 < $1.0 })
//    .map { $1 }
//    .joined(separator: "\n")
//
//print(result)

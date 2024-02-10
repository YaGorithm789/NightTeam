//
//  BOJ1431.swift
//  Algorithm
//
//  Created by Erick on 2024/01/08.
//  시리얼 번호: https://www.acmicpc.net/problem/1431
//

let n = Int(readLine()!)!
var serialNums: [String] = []

for _ in 0..<n {
    let input = readLine()!
    serialNums.append(input)
}

serialNums.sorted { lhs, rhs in
    let lhsSum = lhs.compactMap { Int(String($0)) }.reduce(0, +)
    let rhsSum = rhs.compactMap { Int(String($0)) }.reduce(0, +)

    if lhs.count != rhs.count {
        return lhs.count < rhs.count
    } else if lhsSum != rhsSum {
        return lhsSum < rhsSum
    } else {
        return lhs < rhs
    }
}.forEach { print($0) }

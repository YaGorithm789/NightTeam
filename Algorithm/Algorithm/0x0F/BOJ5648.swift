//
//  BOJ5648.swift
//  Algorithm
//
//  Created by Erick on 2024/01/08.
//  역원소 정렬: https://www.acmicpc.net/problem/5648
//

var input = readLine()!.split(separator: " ").map { String($0) }
var n = Int(input.removeFirst())!
var nums: [Int] = input.compactMap { Int(String($0.reversed())) }

while nums.count < n {
    let input = readLine()!.split(separator: " ").compactMap { Int(String($0.reversed())) }
    nums.append(contentsOf: input)
}

nums.sorted()
    .forEach { print($0) }

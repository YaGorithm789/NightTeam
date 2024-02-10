//
//  BOJ10814.swift
//  Algorithm
//
//  Created by Erick on 2024/01/10.
//  나이순 정렬: https://www.acmicpc.net/problem/10814
//

let n = Int(readLine()!)!
var users: [[String]] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    users.append(input)
}

users.sorted(by: { Int($0[0])! < Int($1[0])! }).forEach({ print($0.joined(separator: " ")) })

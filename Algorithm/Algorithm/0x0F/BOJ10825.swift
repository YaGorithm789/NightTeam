//
//  BOJ10825.swift
//  Algorithm
//
//  Created by Erick on 2024/01/10.
//  국영수: https://www.acmicpc.net/problem/10825
//

let n = Int(readLine()!)!

typealias Student = (name: String, korean: Int, english: Int, math: Int)
var students: [Student] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let grades = input.compactMap { Int($0) }
    students.append((input[0], grades[0], grades[1], grades[2]))
}

students.sort { $0.name < $1.name }
students.sort { $0.math > $1.math }
students.sort { $0.english < $1.english }
students.sort { $0.korean > $1.korean }
students.forEach { print($0.name) }

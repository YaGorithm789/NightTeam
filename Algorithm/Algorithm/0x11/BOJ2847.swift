//
//  BOJ2847.swift
//  Algorithm
//
//  Created by Erick on 2/23/24.
//  게임을 만든 동준이: https://www.acmicpc.net/problem/2847
//

let n = Int(readLine()!)!
var points: [Int] = []
var path = Int.max
var result = 0

for _ in 0..<n {
    points.append(Int(readLine()!)!)
}

for point in points.reversed() {
    if point >= path {
        let minusPoint = point - path + 1
        result += minusPoint
        path = point - minusPoint
    } else {
        path = point
    }
}

print(result)

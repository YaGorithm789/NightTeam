//
//  BOJ9663.swift
//  Algorithm
//
//  Created by Erick on 2023/12/20.
//  N-Queen: https://www.acmicpc.net/problem/9663
//

let n = Int(readLine()!)!

var visitRow = Array(repeating: false, count: 40)
var visitLine = Array(repeating: false, count: 40)
var visitCross = Array(repeating: false, count: 40)
var count = 0

recursion(0)

print(count)

func recursion(_ depth: Int) {
    if depth == n {
        count += 1
        return
    } else {
        for i in 0..<n {
            if !visitRow[i],
               !visitLine[i + depth],
               !visitCross[depth - i + n + 1] {
                visitRow[i] = true
                visitLine[i + depth] = true
                visitCross[depth - i + n + 1] = true
                recursion(depth + 1)
                visitRow[i] = false
                visitLine[i + depth] = false
                visitCross[depth - i + n + 1] = false
            }
        }
    }
}

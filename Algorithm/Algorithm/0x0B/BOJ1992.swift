//
//  BOJ1992.swift
//  Algorithm
//
//  Created by Erick on 2023/12/16.
//  쿼드트리: https://www.acmicpc.net/problem/1992
//

let n = Int(readLine()!)!

var video: [[Int]] = []
var result = ""

for _ in 0..<n {
    let nums = Array(readLine()!).compactMap { Int(String($0)) }
    video.append(nums)
}

func recursion(_ y: Int, _ x: Int, _ n: Int) {
    var numCount = Array(repeating: 0, count: 2)
    
    for y in y..<y+n {
        for x in x..<x+n {
            if video[y][x] == 0 {
                numCount[0] += 1
            } else {
                numCount[1] += 1
            }
        }
    }
    
    for i in 0..<2 {
        if numCount[i] == n * n {
            result.append("\(i)")
            return
        }
    }
    
    let nSplit = n / 2
    result.append("(")
    recursion(y, x, nSplit)
    recursion(y, x + nSplit, nSplit)
    recursion(y + nSplit, x, nSplit)
    recursion(y + nSplit, x + nSplit, nSplit)
    result.append(")")
}

recursion(0, 0, n)

print(result)

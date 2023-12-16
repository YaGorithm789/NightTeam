//
//  BOJ2630.swift
//  Algorithm
//
//  Created by Erick on 2023/12/16.
//  색종이 만들기: https://www.acmicpc.net/problem/2630
//

let n = Int(readLine()!)!

var paper: [[Int]] = []
var result = Array(repeating: 0, count: 2)

for _ in 0..<n {
    let nums = readLine()!.split(separator: " ").compactMap { Int($0)! }
    paper.append(nums)
}

func recursion(_ y: Int, _ x: Int, _ n: Int) {
    var numCount = Array(repeating: 0, count: 2)
    
    for y in y..<y+n {
        for x in x..<x+n {
            if paper[y][x] == 0 {
                numCount[0] += 1
            } else {
                numCount[1] += 1
            }
        }
    }
    
    for i in 0..<2 {
        if numCount[i] == n * n {
            result[i] += 1
            return
        }
    }
    
    let nSplit = n / 2
    
    recursion(y, x, nSplit)
    recursion(y, x + nSplit, nSplit)
    recursion(y + nSplit, x, nSplit)
    recursion(y + nSplit, x + nSplit, nSplit)
}

recursion(0, 0, n)

result.forEach {
    print($0)
}

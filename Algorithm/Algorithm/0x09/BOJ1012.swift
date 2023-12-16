//
//  BOJ1012.swift
//  Algorithm
//
//  Created by Erick on 2023/12/05.
//  유기농 배추: https://www.acmicpc.net/problem/1012
//

let input = Int(readLine()!)!
var h = 0, w = 0
var farm: [[Bool]] = []
var result: [Int] = []

for _ in 0..<input {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let cabbageCount = input[2]
    (h, w) = (input[0], input[1])
    
    farm = Array(repeating: Array(repeating: false, count: w), count: h)
    
    for _ in 0..<cabbageCount {
        let positions = readLine()!.split(separator: " ").map { Int(String($0))! }
        
        farm[positions[0]][positions[1]] = true
    }
    
    var count = 0
    
    for i in 0..<h {
        for j in 0..<w {
            if farm[i][j] {
                dfs(i, j)
                count += 1
            }
        }
    }
    
    result.append(count)
}

print(result.map { String($0) }.joined(separator: "\n"))

func dfs(_ x: Int,_ y: Int) {
    let nextX = [1, -1, 0, 0]
    let nextY = [0, 0, 1, -1]
    var queue = [(x, y)]
    
    farm[x][y] = false
    
    while !queue.isEmpty {
        let (x, y) = queue.popLast()!
        
        for i in 0..<4 {
            let (nx, ny) = (x + nextX[i], y + nextY[i])
            if (0..<h).contains(nx),
               (0..<w).contains(ny),
               farm[nx][ny] {
                farm[nx][ny] = false
                queue.append((nx, ny))
            }
        }
    }
}

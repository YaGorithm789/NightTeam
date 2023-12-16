//
//  BOJ1926.swift
//  Algorithm
//
//  Created by Erick on 2023/11/29.
//  그림: https://www.acmicpc.net/problem/1926
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]

var board: [[Int]] = []
var count = 0
var maxArea = 0

for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

for i in 0..<n {
    for j in 0..<m {
        if board[i][j] == 1 {
            let area = bfs(i, j)
            count += 1
            maxArea = max(maxArea, area)
        }
    }
}

func bfs(_ x: Int, _ y: Int) -> Int {
    let nextX = [1, -1, 0, 0]
    let nextY = [0, 0, 1, -1]
    var queue = [(x, y)]
    var area = 1
    
    board[x][y] = 0
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        for i in 0..<4 {
            let nx = x + nextX[i]
            let ny = y + nextY[i]
            
            if (0..<n).contains(nx),
               (0..<m).contains(ny),
               board[nx][ny] == 1 {
                board[nx][ny] = 0
                queue.append((nx, ny))
                area += 1
            }
        }
    }
    
    return area
}

print(count)
print(maxArea)

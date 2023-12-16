//
//  BOJ2178.swift
//  Algorithm
//
//  Created by Erick on 2023/11/30.
//  미로 탐색: https://www.acmicpc.net/problem/2178
//

let input = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
let n = input[0]
let m = input[1]

var maze: [[Int]] = []
var mazePath = Array(repeating: Array(repeating: 0, count: m), count: n)

for _ in 0..<n {
    maze.append(Array(readLine()!).compactMap { Int(String($0)) })
}

func bfs(_ x: Int, _ y: Int) {
    let nextX = [1, -1, 0, 0]
    let nextY = [0, 0, 1, -1]
    var queue = [(x, y)]
    
    maze[x][y] = 0
    
    while !queue.isEmpty {
        let (x, y) = queue.removeFirst()
        
        for i in 0..<4 {
            let nx = x + nextX[i]
            let ny = y + nextY[i]
            
            if (0..<n).contains(nx),
               (0..<m).contains(ny),
               maze[nx][ny] == 1 {
                maze[nx][ny] = 0
                queue.append((nx, ny))
                mazePath[nx][ny] = mazePath[x][y] + 1
            }
        }
    }
}

bfs(0, 0)
print(mazePath[n-1][m-1] + 1)

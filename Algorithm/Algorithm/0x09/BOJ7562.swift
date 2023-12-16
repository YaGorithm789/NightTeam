//
//  BOJ7562.swift
//  Algorithm
//
//  Created by Erick on 2023/12/07.
//  나이트의 이동: https://www.acmicpc.net/problem/7562
//

let inputCount = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<inputCount {
    bfs()
}

print(result.map({ String($0) }).joined(separator: "\n"))

func bfs() {
    let boardCount = Int(readLine()!)!
    let start = readLine()!.split(separator: " ").compactMap { Int($0) }
    let target = readLine()!.split(separator: " ").compactMap { Int($0) }
    
    let dx = [1, 1, 2, 2, -1, -1, -2, -2]
    let dy = [2, -2, 1, -1, 2, -2, 1, -1]
    
    var path = Array(repeating: Array(repeating: -1, count: boardCount), count: boardCount)
    var queue = [(start[0], start[1])]
    var pointer = 0
    
    path[start[0]][start[1]] = 0
    
    while pointer < queue.count {
        let (x, y) = queue[pointer]
        pointer += 1
        
        for i in 0..<8 {
            let (nx, ny) = (x + dx[i], y + dy[i])
            
            if (0..<boardCount).contains(nx),
               (0..<boardCount).contains(ny),
               path[nx][ny] == -1 {
                queue.append((nx, ny))
                path[nx][ny] = path[x][y] + 1
            }
        }
    }
    
    result.append(path[target[0]][target[1]])
}

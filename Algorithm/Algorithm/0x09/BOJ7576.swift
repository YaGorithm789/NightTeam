//
//  BOJ7576.swift
//  Algorithm
//
//  Created by Erick on 2023/11/30.
//  토마토: https://www.acmicpc.net/problem/7576
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[1]
let m = input[0]

var storage: [[Int]] = []
var dateStorage = Array(repeating: Array(repeating: 0, count: m), count: n)

for _ in 0..<n {
    storage.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}

func bfs() {
    let nextX = [1, -1, 0, 0]
    let nextY = [0, 0, 1, -1]
    var queue: [(Int, Int)] = []
    var pointer = 0
    
    for i in 0..<n {
        for j in 0..<m {
            if storage[i][j] == 1 {
                queue.append((i, j))
            }
        }
    }
    
    while pointer < queue.count {
        let (x, y) = queue[pointer]
        pointer += 1

        for i in 0..<4 {
            let nx = x + nextX[i]
            let ny = y + nextY[i]

            if (0..<n).contains(nx),
               (0..<m).contains(ny),
               storage[nx][ny] == 0 {
                storage[nx][ny] = 1
                queue.append((nx, ny))
                dateStorage[nx][ny] = dateStorage[x][y] + 1
            }
        }
    }
}

bfs()

if storage.flatMap({ $0 }).filter({ $0 == 0 }).count > 0 {
    print(-1)
} else {
    print(dateStorage.flatMap { $0 }.max()!)
}

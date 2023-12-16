//
//  BOJ 2206.swift
//  Algorithm
//
//  Created by Erick on 2023/12/07.
//  벽 부수고 이동하기: https://www.acmicpc.net/problem/2206
//  0: 벽 안 부숨, 1: 벽 부숨

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (n, m) = (input[0], input[1])

var maze: [[Int]] = []
var mazePath = Array(repeating: Array(repeating: [0, 0], count: m), count: n)

for _ in 0..<n {
    maze.append(Array(readLine()!).compactMap { Int(String($0)) })
}

bfs()

func bfs() {
    let dx = [1, -1, 0, 0]
    let dy = [0, 0, 1, -1]

    var queue = [(0, 0, 0)]
    var pointer = 0

    mazePath[0][0][0] = 1

    while pointer < queue.count {
        let (x, y, breakIndex) = queue[pointer]
        pointer += 1

        if (x, y) == (n - 1, m - 1) {
            print(mazePath[x][y][breakIndex])
            return
        }

        for i in 0..<4 {
            let (nx, ny) = (x + dx[i], y + dy[i])

            guard (0..<n).contains(nx),
                  (0..<m).contains(ny),
                  mazePath[nx][ny][breakIndex] == 0 else {
                continue
            }

            if maze[nx][ny] == 0 {
                mazePath[nx][ny][breakIndex] = mazePath[x][y][breakIndex] + 1
                queue.append((nx, ny, breakIndex))
            } else if breakIndex == 0 {
                mazePath[nx][ny][1] = mazePath[x][y][breakIndex] + 1
                queue.append((nx, ny, 1))
            }
        }
    }

    print(-1)
}

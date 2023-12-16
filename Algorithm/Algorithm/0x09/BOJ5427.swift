//
//  BOJ5427.swift
//  Algorithm
//
//  Created by Erick on 2023/12/07.
//  불: https://www.acmicpc.net/problem/5427
//

let inputCount = Int(readLine()!)!
var result: [String] = []

for _ in 0..<inputCount {
    solution()
}

print(result.joined(separator: "\n"))


func solution() {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let (c, r) = (input[0], input[1])

    var maze: [[String]] = []
    var firePath = Array(repeating: Array(repeating: Int.max, count: c), count: r)
    var humanPath = Array(repeating: Array(repeating: -1, count: c), count: r)

    var (sx, sy) = (0, 0)
    var fireQueue: [(x: Int, y: Int)] = []

    for i in 0..<r {
        maze.append(Array(readLine()!).map { String($0) })

        for j in 0..<c {
            if maze[i][j] == "@" {
                (sx, sy) = (i, j)
                humanPath[sx][sy] = 0
                maze[i][j] = "."
            } else if maze[i][j] == "*" {
                fireQueue.append((i,j))
                firePath[i][j] = 0
            }
        }
    }

    bfsFire()
    bfs()

    func bfsFire() {
        let nextX = [1, -1, 0, 0]
        let nextY = [0, 0, 1, -1]
        var pointer = 0

        while pointer < fireQueue.count {
            let (x, y) = fireQueue[pointer]
            pointer += 1

            for i in 0..<4 {
                let (nx, ny) = (x + nextX[i], y + nextY[i])

                if (0..<r).contains(nx),
                   (0..<c).contains(ny),
                   maze[nx][ny] != "#",
                   firePath[nx][ny] > firePath[x][y] + 1 {
                    firePath[nx][ny] = firePath[x][y] + 1
                    fireQueue.append((nx,ny))
                }
            }
        }
    }

    func bfs() {
        let nextX = [1, -1, 0, 0]
        let nextY = [0, 0, 1, -1]
        var queue = [(sx,sy)]
        var pointer = 0

        while pointer < queue.count {
            let (x, y) = queue[pointer]
            pointer += 1

            for i in 0..<4 {
                let (nx, ny) = (x + nextX[i], y + nextY[i])

                if !(0..<r).contains(nx) ||
                   !(0..<c).contains(ny) {
                    result.append("\(humanPath[x][y] + 1)")
                    return
                }

                if maze[nx][ny] != "#",
                   firePath[nx][ny] > humanPath[x][y] + 1,
                   humanPath[nx][ny] == -1 {
                    humanPath[nx][ny] = humanPath[x][y] + 1
                    queue.append((nx, ny))
                }
            }
        }

        result.append("IMPOSSIBLE")
    }
}

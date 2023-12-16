//
//  BOJ10026.swift
//  Algorithm
//
//  Created by Erick on 2023/12/05.
//  적록색약: https://www.acmicpc.net/problem/10026
//

let input = Int(readLine()!)!

var painting: [[Character]] = []
var rgPainting: [[Character]] = []

for _ in 0..<input {
    let input = Array(readLine()!)
    painting.append(input)
    rgPainting.append(input)
}

let c = input
let r = painting[0].count

var count = 0
var rgCount = 0

for i in 0..<c {
    for j in 0..<r {
        if painting[i][j] != "V" {
            bfs(i,j)
            count += 1
        }
        
        if rgPainting[i][j] != "V" {
            bfsRG(i, j)
            rgCount += 1
        }
    }
}

print("\(count) \(rgCount)")

func bfs(_ x: Int, _ y: Int) {
    let nextX = [1, -1, 0, 0]
    let nextY = [0, 0, 1, -1]
    var queue = [(x, y)]
    var pointer = 0
    var beforeColor = painting[x][y]
    
    painting[x][y] = "V"
    
    while pointer < queue.count {
        let (x, y) = queue[pointer]
        
        pointer += 1
        
        for i in 0..<4 {
            let (nx, ny) = (x + nextX[i], y + nextY[i])
            
            if (0..<c).contains(nx),
               (0..<r).contains(ny),
               painting[nx][ny] == beforeColor {
                beforeColor = painting[nx][ny]
                painting[nx][ny] = "V"
                queue.append((nx, ny))
            }
        }
    }
}

func bfsRG(_ x: Int, _ y: Int) {
    let nextX = [1, -1, 0, 0]
    let nextY = [0, 0, 1, -1]
    var queue = [(x, y)]
    var pointer = 0
    var beforeColor = rgPainting[x][y]
    
    rgPainting[x][y] = "V"
    
    while pointer < queue.count {
        let (x, y) = queue[pointer]
        
        pointer += 1
        
        for i in 0..<4 {
            let (nx, ny) = (x + nextX[i], y + nextY[i])
            
            guard (0..<c).contains(nx),
                  (0..<r).contains(ny) else {
                continue
            }
            
            switch beforeColor {
            case "R", "G":
                if rgPainting[nx][ny] == "R" || rgPainting[nx][ny] == "G" {
                    beforeColor = rgPainting[nx][ny]
                    rgPainting[nx][ny] = "V"
                    queue.append((nx, ny))
                }
            case "B":
                if rgPainting[nx][ny] == "B" {
                    beforeColor = rgPainting[nx][ny]
                    rgPainting[nx][ny] = "V"
                    queue.append((nx, ny))
                }
            default:
                continue
            }
        }
    }
}

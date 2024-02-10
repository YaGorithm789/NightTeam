//
//  BOJ18808.swift
//  Algorithm
//
//  Created by Erick on 2024/01/08.
//  스티커 붙이기: https://www.acmicpc.net/problem/18808
//

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let n = input[0]
let m = input[1]
let k = input[2]

var board = Array(repeating: Array(repeating: 0, count: m), count: n)
var testBoard = Array(repeating: Array(repeating: 0, count: m), count: n)

for _ in 0..<k {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    var sn = input[0]
    var sm = input[1]
    var sticker: [[Int]] = []
    
    for _ in 0..<sn {
        let input = readLine()!.split(separator: " ").compactMap { Int($0) }
        sticker.append(input)
    }
    
    for _ in 0..<4 {
        if isStick(sn, sm, sticker) {
            break
        } else {
            sticker = rotateSticker(sn, sm, sticker)
            swap(&sn, &sm)
        }
    }
}

var result: Int = 0

for i in 0..<n {
    for j in 0..<m {
        result += board[i][j]
    }
}

print(result)

func rotateSticker(_ sn: Int, _ sm: Int, _ sticker: [[Int]]) -> [[Int]] {
    var rotateBoard = Array(repeating: Array(repeating: 0, count: 10), count: 10)
    var rotateSticker = Array(repeating: Array(repeating: 0, count: sn), count: sm)
    
    for i in 0..<sn {
        for j in 0..<sm {
            rotateBoard[i][j] = sticker[i][j]
        }
    }
    
    // 1 1 0
    // 0 1 0
    // 0 0 0
    // 0 0 1
    //⬆️⬆️⬆️
    
    // ➡️ 0 0 0 1
    // ➡️ 0 0 1 1
    // ➡️ 1 0 0 0
    
    for i in 0..<sm {
        for j in 0..<sn {
            rotateSticker[i][j] = rotateBoard[sn - 1 - j][i]
        }
    }
    
    return rotateSticker
}

func isStick(_ sn: Int, _ sm: Int, _ sticker: [[Int]]) -> Bool {
    var isStick = false
    
    for i in 0..<n {
        for j in 0..<m {
            isStick = true
            
            guard i + sn <= n,
                  j + sm <= m else {
                isStick = false
                continue
            }
            
            for k in i..<i + sn {
                for l in j..<j + sm {
                    if testBoard[k][l] + sticker[k - i][l - j] == 2 {
                        isStick = false
                        break
                    } else {
                        testBoard[k][l] += sticker[k - i][l - j]
                    }
                }
                
                if !isStick {
                    testBoard = board
                    break
                }
            }
            
            if isStick {
                board = testBoard
                return isStick
            }
        }
    }
    
    return isStick
}

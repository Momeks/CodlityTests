//
//  main.swift
//  CodlityTests
//
//  Created by Mohammad Komeili on 4/1/25.
/// https://app.codility.com/programmers/lessons/1-iterations/binary_gap/

import Foundation

// MARK: - Lesson 1 - Itteration
// MARK: - BinaryGap
/// Find longest sequence of zeros in binary representation of an integer

public func solution(_ N : Int) -> Int {
    // conver number into binary to show like 1001
    let binary = String(N, radix: 2)
    var maxGap = 0
    var currentGap = 0
    var counting = false
    
    for char in binary {
        if char == "1" {
            if counting {
                maxGap = max(maxGap, currentGap)
            }
            currentGap = 0
            counting = true
        } else if counting {
            currentGap += 1
        }
    }
    return maxGap
}

print(solution(549))

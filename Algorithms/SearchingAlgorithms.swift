//
//  SearchingAlgorithms.swift
//  Algorithms
//
//  Created by APPLE on 27/04/20.
//  Copyright © 2020 Isha Ramdasi. All rights reserved.
//

import Foundation

/*
 Searches a required number by checking every element one after another inside the array
 */
func linearSearch(arr: [Int], no: Int) -> Int {
    for i in 0..<arr.count {
        if no == arr[i] {
            return i
        }
    }
    return -1
}

/*
 Searches a required number by divding the arrays in two halfs and then searching through array
 */
func binarySearch(arr: [Int], no: Int, startIndex: Int, length: Int) -> Int {
    let median = startIndex + (length - startIndex) / 2
    if length >= startIndex {
        if arr[median] == no {
            return median
        }
        if arr[median] > no {
            return binarySearch(arr: arr, no: no, startIndex: 0, length: median - startIndex)
        } else {
            return binarySearch(arr: arr, no: no, startIndex: median + 1, length: length)
        }
    }
    return -1
}

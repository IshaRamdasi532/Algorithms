//
//  SortingAlgorithms.swift
//  Algorithms
//
//  Created by APPLE on 27/04/20.
//  Copyright © 2020 Isha Ramdasi. All rights reserved.
//

import Foundation

/*
 Sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning.
 */
func selectionSort(arr:[Int]) {
    let len = arr.count
    var min_index = 0
    var array:[Int] = arr
    for i in 0..<len - 1 {
        min_index = i
        for j in i+1..<len  {
            if array[j]<array[min_index] {
                min_index = j
            }
        }
        array.swapAt(i, min_index)
    }
    print("final:\(array)")
}

/*
 Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.
 */
func bubbleSort(arr:[Int]) {
    let len = arr.count
    var array:[Int] = arr
    for _ in 0..<len {
        for j in 0..<len - 1  {
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
            }
        }
    }
    print(array)
}
/*
 Sorts the array in ascending order by picking one element of the array and inserting it in the unsorted array
 */
func insertionSort(arr:[Int]) {
    let len = arr.count
    var array = arr
    
    for i in 1..<len {
        let value = array[i]
        var position = i
        while (position > 0 && array[position - 1] > value) {
            array[position] = array[position - 1]
            position -= 1
        }
        array[position] = value
    }
    print(array)
}

/*
  It divides input array in two halves, calls itself for the two halves and then merges the two sorted halves.
 */

func mergeSort<T: Comparable>(array: inout [T]) {
    mergeSort(array: &array, startIndex: 0, endIndex: array.count-1)
}

func mergeSort<T: Comparable>(array: inout [T], startIndex: Int, endIndex: Int) {
    // Base case
    if startIndex >= endIndex {
        return
    }
    
    let middleIndex = (startIndex + endIndex) / 2
    mergeSort(array: &array, startIndex: startIndex, endIndex: middleIndex)
    mergeSort(array: &array, startIndex: middleIndex+1, endIndex: endIndex)
    merge(array: &array, startIndex: startIndex, middleIndex: middleIndex, endIndex: endIndex)
    print(array)
}

/*
 This combines two array into one
 */

func merge<T: Comparable> (array: inout [T], startIndex: Int, middleIndex: Int, endIndex: Int) {
    let leftSubarray = Array(array[startIndex...middleIndex])
    let rightSubarray = Array(array[middleIndex+1...endIndex])
    
    var index = startIndex
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < leftSubarray.count && rightIndex < rightSubarray.count {
        if leftSubarray[leftIndex] < rightSubarray[rightIndex] {
            array[index] = leftSubarray[leftIndex]
            leftIndex += 1
        }
        else {
            array[index] = rightSubarray[rightIndex]
            rightIndex += 1
        }
        index += 1
    }
    
    while leftIndex < leftSubarray.count {
        array[index] = leftSubarray[leftIndex]
        index += 1
        leftIndex += 1
    }
    
    while rightIndex < rightSubarray.count {
        array[index] = rightSubarray[rightIndex]
        index += 1
        rightIndex += 1
    }
}



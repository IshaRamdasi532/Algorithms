//
//  ViewController.swift
//  Algorithms
//
//  Created by APPLE on 21/04/20.
//  Copyright © 2020 Isha Ramdasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Use of all sorting algos
        selectionSort(arr: [12, 5, 9, 31, 16])
        bubbleSort(arr: [10, 1, 7, 65, 53, 4])
        insertionSort(arr: [4, 3, 2, 10, 12, 1, 5, 6])
        var num = [17, 8, 34, 6, 89, 0, -1]
        mergeSort(array: &num)
        
        //use of all searching algos
        let _ = binarySearch(arr: [3, 8, 12, 45, 78, 100, 198], no: 100, startIndex: 0, length: 6)
        let _ = linearSearch(arr: [1, 5, 9, 24, 45, 78, 99], no: 9)
    }
}


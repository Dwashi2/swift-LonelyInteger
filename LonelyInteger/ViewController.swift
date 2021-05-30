//
//  ViewController.swift
//  LonelyInteger
//
//  Created by Daniel Washington Ignacio on 30/05/21.
//

/*
 You are given an array of integers having both negative and positive values, except for one integer which can be negative or positive. Create a function to find out that integer.

 Examples

 lonelyInteger([1, -1, 2, -2, 3]) ➞ 3
 // 3 has no matching negative appearance.

 lonelyInteger([-3, 1, 2, 3, -1, -4, -2]) ➞ -4
 // -4 has no matching positive appearance.

 lonelyInteger([-9, -105, -9, -9, -9, -9, 105]) ➞ -9
 Notes

 N/A
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(lonelyInteger([1, -1, 2, -2, 3]))
        print(lonelyInteger([-3, 1, 2, 3, -1, -4, -2]))
        print(lonelyInteger([-9, -105, -9, -9, -9, -9, 105]))
    }

    
    func lonelyInteger(_ arr: [Int]) -> Int {
        for n in arr {
                if !arr.contains(-n) {
                    return n
                }
            }
        return 0
    }

}


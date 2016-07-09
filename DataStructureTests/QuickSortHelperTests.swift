//
//  QuickSortHelperTests.swift
//  DataStructure
//
//  Created by Calvin Tsang on 9/7/2016.
//  Copyright © 2016 Calvin Tsang. All rights reserved.
//

import XCTest
@testable import DataStructure

class QuickSortHelperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testQuickSort(){
        
        print("testQuickSort running");
        
        let a : Array<Int> = [3, 1, 2, 5, 4, 6, 9, 7, 10, 8];
        let quickSortHelper : QuickSortHelper = QuickSortHelper(nums: a);
        
        quickSortHelper.quickSort(0, right: a.count-1);
        
        var result : Array<Int> = quickSortHelper.getNumbers();
        let expected : Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
        print ("result=\(result.description)");
        print ("expect=\(expected.description)");
        for i in 1...(result.count-1){
            assert(result[i] == expected[i]);
        }
        
        
    }
    
}

//
//  QuickSortHelper.swift
//  DataStructure
//
//  Created by Calvin Tsang on 9/7/2016.
//  Copyright © 2016 Calvin Tsang. All rights reserved.
//

import UIKit

class QuickSortHelper: NSObject {
    
    var numbers: Array<Int> = [];
    
    init (nums: Array<Int>){
        print("QuickSortHelper init");
        self.numbers = nums;
    }
    
    func printString(){
        print("QuickSortHelper");
    }
    
    func getNumbers() -> Array<Int>
    {
        return self.numbers;
    }
    
    func quickSort(left: Int, right: Int)
    {
        
        var i: Int, j: Int, t: Int, temp: Int;
        if (left > right){
            return;
        }
        
        temp = self.numbers[left];
        i = left;
        j = right;
        
        while ( i != j){
            
            
            while( self.numbers[j] >= temp && i < j){
                j = j-1;
            }
            
            while( self.numbers[i] <= temp && i < j){
                i = i+1;
            }
            
            if ( i < j){
                t = self.numbers[i];
                self.numbers[i] = self.numbers[j];
                self.numbers[j] = t;
            }
            
        }
        
        self.numbers[left] = self.numbers[i];
        self.numbers[i] = temp;
        
        quickSort(left, right:(i-1));
        quickSort((i+1), right:right);
        
    }
}

//
//  ViewController.swift
//  DataStructure
//
//  Created by Calvin Tsang on 9/7/2016.
//  Copyright © 2016 Calvin Tsang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var myTableView: UITableView!
    var colorsArray = ["Blue", "Red", "Green", "Yellow"];
    var colorsArrayList : NSMutableArray = NSMutableArray();
    
    var numbers = [3, 1, 2, 5, 4, 6, 9, 7, 10, 8];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return numbers.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        cell.textLabel?.text = "number=\(numbers[indexPath.row])";
        
        return cell;
        
    }
    
    @IBAction func sortButtonDidClick(sender: UIButton) {
        quickSort(0, right: self.numbers.count-1);
        self.myTableView.reloadData();
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


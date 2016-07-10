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
    
    var helper : QuickSortHelper!;
    
    var nums : Array<Int> = [];
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a : Array<Int> = [3, 1, 2, 5, 4, 6, 9, 7, 10, 8];
        self.helper = QuickSortHelper(nums: a);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return nums.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "MyTestCell")
        cell.textLabel?.text = "number=\(nums[indexPath.row])";
        
        return cell;
        
    }
    
    @IBAction func sortButtonDidClick(sender: UIButton) {
        self.helper.quickSort(0, right: self.nums.count-1);
        self.nums = helper.getNumbers();
        self.myTableView.reloadData();
    }
    
    



}


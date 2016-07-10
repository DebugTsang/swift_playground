//
//  LinkedList.swift
//  DataStructure
//
//  Created by Calvin Tsang on 9/7/2016.
//  Copyright © 2016 Calvin Tsang. All rights reserved.
//

import UIKit

class Node{
    
    var key: Int;
    
    var next: Node?
    
    init(key: Int){
        self.next = nil;
        self.key = key;
    }
 
    func hasNext() -> Bool
    {
        if (self.next != nil){
            return true;
        }else{
            return false;
        }
    }
    func setNext(node: Node)
    {
        self.next = node;
    }
}

class LinkedList: NSObject {
    
    var root: Node?
    
    init(node: Node){
        if self.root == nil{
            self.root = Node.init(key: node.key);
        }
        
    }
    
    func addNode(node: Node){
        var currentNode: Node = self.root!
        while (currentNode.next != nil){
            currentNode = currentNode.next!
        }
        currentNode.setNext(node);
    }
    
    func printList(){
        NSLog("printList()");
        var node:Node = self.root!
        print ("\(node.key)");
        while (node.hasNext()){
            node = node.next!
            print("\(node.key),");
            
        }
    }
}

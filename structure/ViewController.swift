//
//  ViewController.swift
//  structure
//
//  Created by Adwait Barkale on 29/10/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

struct myStack<Element>
{
    var items = [Element]()
    mutating func push(_ item: Element)
    {
        items.append(item)
    }
    
    mutating func pop() -> Element
    {
        return items.removeLast()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //print(addTwoValues(no1: 5, no2: 6))
        
        //Generic
        let genericAdd1 = additionUsingGeneric(no1: 8, no2: 5)
        let genericAdd2 = additionUsingGeneric(no1: 5, no2: 2.5)
        print(genericAdd1)
        print(genericAdd2)
        getData()
    }

    
    func addTwoValues(no1:Int,no2:Int) -> Int
    {
        let answer = no1 + no2
        return answer
    }
    
    func additionUsingGeneric<T: Numeric>(no1: T,no2: T) -> T
    {
        return no1 + no2
    }

    func getData()
    {
        var myStack1 = myStack<Any>()
        myStack1.push(10.45)
        myStack1.push(20)
        //myStack1.pop()
        //myStack1.pop()
        print(myStack1.items)
        
        var myStack2 = myStack<String>()
        myStack2.push("Adwait")
        myStack2.push("Test")
        print(myStack2)
    }
}


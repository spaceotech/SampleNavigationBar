//
//  ViewController.swift
//  SampleNavigationBar
//
//  Created by Hitesh on 2/17/17.
//  Copyright © 2017 spaceo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy   var searchBar:UISearchBar = UISearchBar(frame: CGRectMake(0, 0, 200, 20))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Add button on navigation bar right side
        let barButtonEdit = UIBarButtonItem(barButtonSystemItem: .Edit, target: self, action: #selector(actionEdit(_:)))
        
        let barButtonAdd = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(actionAdd(_:)))
        
        self.navigationItem.setRightBarButtonItems([barButtonEdit, barButtonAdd], animated: true)
        
        //Add button/searchbar on navigation bar in left side
        let leftNavBarButton = UIBarButtonItem(customView: searchBar)
        self.navigationItem.leftBarButtonItem = leftNavBarButton
        
    }
    
    
    //Action on Edit button
    func actionEdit(sender: UIBarButtonItem)
    {
        print("actionEdit")
    }
    
    //Action on Add button
    func actionAdd(sender: UIBarButtonItem)
    {
        print("actionAdd")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        searchBar.endEditing(true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


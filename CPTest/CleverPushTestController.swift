//
//  ViewController.swift
//  CPTest
//
//  Created by SMBA on 18/08/2020.
//  Copyright © 2020 SMBA. All rights reserved.
//

import UIKit
import CleverPush

class CleverPushTestController: UITableViewController {
    
 let switchView = UISwitch()

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
      
        navigationItem.title = "Topics"
        self.tableView.separatorStyle = .none
        switchView.addTarget(self, action: #selector(switchTapped), for: .touchUpInside)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
    }
    
    
    
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
return 1
}

    
override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
    
   
    cell.textLabel?.text = "Tech"
    cell.accessoryView = switchView
  
    
    return cell
    
}
    
    @objc func switchTapped(sender: UISwitch) {
        
    let i = sender.tag
        
    switch i {
    
    case 0:
    //Tech tag crkpCWYD8khPKjmoH
    
    CleverPush.addSubscriptionTag("crkpCWYD8khPKjmoH")
    return
    
    case 1:
        
//  Apple TAG CleverPush.addSubscriptionTag("W2P2wa9sFFaL78r9e")
    return
    
            
            
        
    default:
        ()
        }
        
        
        
    }
    
    
    
}


    
    
    
 



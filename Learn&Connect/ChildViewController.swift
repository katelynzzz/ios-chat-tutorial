//
//  ChildViewController.swift
//  Autism Buddies
//
//  Created by Katelyn Zhang on 2/1/20.
//  Copyright © 2020 hacksc. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController{
    
    @IBAction func ChildChatButton(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "ChildChatSegue", sender: self)
        
    }
    @IBAction func ChildPlayButton(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "ChildGameSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

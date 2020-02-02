//
//  ChildGamesViewController.swift
//  Learn&Connect
//
//  Created by Katelyn Zhang on 2/1/20.
//  Copyright © 2020 Scaledrone. All rights reserved.
//

import UIKit

class ChildGamesViewController: UIViewController{
    
    @IBAction func AddingFiveButton(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "AdditionwithFive", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

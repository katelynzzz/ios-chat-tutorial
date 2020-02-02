//
//  ViewController.swift
//  Autism Buddies
//
//  Created by Katelyn Zhang on 2/1/20.
//  Copyright © 2020 hacksc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{

    @IBAction func submitButton(_ sender: AnyObject) {
        print("button pressed")
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("View did load")
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}


//
//  ThirdScreenViewController.swift
//  Autism Buddies
//
//  Created by Katelyn Zhang on 2/1/20.
//  Copyright © 2020 hacksc. All rights reserved.
//

import UIKit

class ThirdScreenViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var isParent = 0
    @IBOutlet weak var userPrompt: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBAction func selectButton(_ sender: AnyObject) {
        if (isParent == 0) {
            self.performSegue(withIdentifier: "ParentViewSegue", sender: self)
        } else {
            self.performSegue(withIdentifier: "ChildViewSegue", sender: self)
        }
    }
    
    let users = ["Parents", "Children"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (row == 0) {
            isParent = 0
        } else {
            isParent = 1
        }
        return users[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return users.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

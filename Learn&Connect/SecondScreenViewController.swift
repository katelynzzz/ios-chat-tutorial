//
//  SecondScreenViewController.swift
//  Autism Buddies
//
//  Created by Katelyn Zhang on 2/1/20.
//  Copyright © 2020 hacksc. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController{
    @IBOutlet weak var approvalCode: UITextField!
    @IBOutlet weak var warningLabel: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        approvalCode.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        approvalCode.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension SecondScreenViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        let mySubstring = approvalCode.text?.prefix(3)
        if (approvalCode.text?.count != 6) {
            warningLabel.text = "Please enter a six digit approval code"
        } else if ((mySubstring == "AUT")) {
            print("success")
            warningLabel.text = ""
            self.performSegue(withIdentifier: "ThirdViewSegue", sender: self)
        } else {
            warningLabel.text = "Incorrect approval code"
        }
        return true
    }
    
}

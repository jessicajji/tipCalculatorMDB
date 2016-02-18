//
//  SecondViewController.swift
//  TipCalculator
//
//  Created by Jessica Ji on 2/17/16.
//  Copyright © 2016 Jessica Ji. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tenPercentTipLabel: UILabel!
    @IBOutlet weak var fifteenPercentTipLabel: UILabel!    
    @IBOutlet weak var twentyPercentTipLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        amountTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        let amount:Double = Double(amountTextField.text!)!
        let tenPercentOfAmount:Double = amount * 0.1
        let fifteenPercentOfAmount:Double = amount * 0.15
        let twentyPercentOfAmount:Double = amount * 0.2
        tenPercentTipLabel.text = String(tenPercentOfAmount)
        fifteenPercentTipLabel.text = String(fifteenPercentOfAmount)
        twentyPercentTipLabel.text = String(twentyPercentOfAmount)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

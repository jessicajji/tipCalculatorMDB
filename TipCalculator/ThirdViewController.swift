//
//  ThirdViewController.swift
//  TipCalculator
//
//  Created by Jessica Ji on 2/17/16.
//  Copyright © 2016 Jessica Ji. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var foodRecommendation: UITextView!
    
    @IBOutlet weak var hotelRecommendation: UITextView!
    
    @IBOutlet weak var travelRecommendation: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodRecommendation.hidden = false;
        hotelRecommendation.hidden = true;
        travelRecommendation.hidden = true;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func threeRecommendations(sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0)
        {
            foodRecommendation.hidden = false;
            hotelRecommendation.hidden = true;
            travelRecommendation.hidden = true;
        }
        else if(sender.selectedSegmentIndex == 1)
        {
            foodRecommendation.hidden = true;
            hotelRecommendation.hidden = false;
            travelRecommendation.hidden = true;
        }
        else if(sender.selectedSegmentIndex == 2)
        {
            foodRecommendation.hidden = true;
            hotelRecommendation.hidden = true;
            travelRecommendation.hidden = false;
        }
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

//
//  ViewController.swift
//  02-Stepper
//
//  Created by Sergi Comas on 29/11/14.
//  Copyright (c) 2014 sercomi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper: UIStepper?
    @IBOutlet weak var contador: UILabel?
    
    @IBAction func stepperTapped(sender: AnyObject) {
        
        if (stepper!.value < 10) {
            contador?.textColor = UIColor.redColor()
        } else if (stepper!.value > 50) {
            contador?.textColor = UIColor.greenColor()
        } else {
            contador?.textColor = UIColor.blackColor()
        }
        contador?.text = "\(Int(stepper!.value))"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupStepper()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupStepper() {
        stepper?.value = 0
        stepper?.minimumValue = 0
        stepper?.maximumValue = 100
        stepper?.stepValue = 1
        
        contador?.textColor = UIColor.redColor()
        contador?.text = "\(Int(stepper!.value))"
    }

}


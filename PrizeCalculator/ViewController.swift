//
//  ViewController.swift
//  PrizeCalculator
//
//  Created by 竹中寛宰 on 2018/09/03.
//  Copyright © 2018年 SocialNeeds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lStepper: UIStepper!
    @IBOutlet weak var mStepper: UIStepper!
    @IBOutlet weak var sStepper: UIStepper!
    
    @IBOutlet weak var lLabel: UILabel!
    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var sLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func lStepperChanged(_ sender: UIStepper) {
        let num = Int(sender.value)
        lLabel.text = String(num)
        
        calculatePrize()
    }
    @IBAction func mStepperChanged(_ sender: UIStepper) {
        let num = Int(sender.value)
        mLabel.text = String(num)
        
        calculatePrize()
    }
    @IBAction func sStepperChanged(_ sender: UIStepper) {
        let num = Int(sender.value)
        sLabel.text = String(num)
        
        calculatePrize()
    }
    
    private func calculatePrize() {
        let lnum = Int(lStepper.value)
        let mnum = Int(mStepper.value)
        let snum = Int(sStepper.value)
        
        let answerNum = (lnum*5500) + (mnum*1500) + (snum*1000)
        
        answerLabel.text = String(answerNum)
    }
}


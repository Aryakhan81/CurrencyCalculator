//
//  ViewController.swift
//  CurrencyCalculator
//
//  Created by Arya Gharib on 7/4/18.
//  Copyright © 2018 Arya Gharib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Control vars
    var dollarIsInControl = true
    var whichCurrency = 0
    
    //Calculate function
    func calculate(){
        switch <#value#> {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
        if dollarIsInControl{
            let dollars: Float = (NumberFormatter().number(from: dollarAmount.text!)?.floatValue)!
            let pounds: Float = dollars * 0.7554
            let text = String(format: "%.2f", arguments: [pounds])
            poundAmount.text = text
        }
        else {
            let pounds: Float = (NumberFormatter().number(from: poundAmount.text!)?.floatValue)!
            let dollars: Float = pounds * 1.3237
            let text = String(format: "%.2f", arguments: [dollars])
            dollarAmount.text = text
        }
    }

    //Dollars
    @IBOutlet weak var dollarView: UIView!
    @IBOutlet weak var dollarLabel: UILabel!
    @IBOutlet weak var dollarAmount: UITextField!
    
    //Pounds
    @IBOutlet weak var poundView: UIView!
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var poundAmount: UITextField!
    
    //Chooser
    @IBOutlet weak var currencyCollector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Convert dollar amount
    @IBAction func convertDollar(_ sender: UIButton) {
        self.dollarIsInControl = true
        self.calculate()
    }
    
    //Convert other currency
    @IBAction func convertPound(_ sender: UIButton) {
        self.dollarIsInControl = false
        self.calculate()
    }
    

}


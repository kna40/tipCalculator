//
//  ViewController.swift
//  Tip calculator
//
//  Created by Kirolos Agayby on 3/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billAmount: UITextField!
    @IBOutlet var tip_10p: UILabel!
    @IBOutlet var tip_15p: UILabel!
    @IBOutlet var tip_20p: UILabel!
    let tipPercentages = [0.10, 0.15, 0.20]
    
    @IBAction func calculateTip(_ sender: UIButton) {
        let bill = Double(billAmount.text!) ?? 0
        let tip10 = bill*tipPercentages[0]
        let tip15 = bill*tipPercentages[1]
        let tip20 = bill*tipPercentages[2]
        tip_10p.text = String(format: "$%.2f", "$", tip10)
        tip_15p.text = String(format: "$%.2f", "$", tip15)
        tip_20p.text = String(format: "$%.2f", "$", tip20)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }


}


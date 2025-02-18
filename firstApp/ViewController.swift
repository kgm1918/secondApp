//
//  ViewController.swift
//  firstApp
//
//  Created by Gulnaz Kaztayeva on 17.02.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touched(_ sender: Any) {
//        label.text = textfield.text
        let a = textfield1.text!
        let b = textfield2.text!
        if let numberOne = Int(a), let numberTwo = Int(b) {
            let sum = numberOne + numberTwo
            label.text = String(sum)
        } else {
            label.text = "Enter two numbers"
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        let a = textfield1.text!
        let b = textfield2.text!
        guard let numberOne = Int(a), let numberTwo = Int(b) else {
            label.text = "Enter two numbers"
            return
        }
        let minus = numberOne - numberTwo
        label.text = String(minus)
    }
    
    @IBAction func multiply(_ sender: Any) {
        let a = textfield1.text!
        let b = textfield2.text!
        guard let numberOne = Int(a), let numberTwo = Int(b) else {
            label.text = "Enter two numbers"
            return
        }
        let mul = numberOne * numberTwo
        label.text = String(mul)
    }
    
    @IBAction func divide(_ sender: Any) {
        let a = textfield1.text!
        let b = textfield2.text!
        guard let numberOne = Int(a), let numberTwo = Int(b) else {
            label.text = "Enter two numbers"
            return
        }
        let divide = numberOne / numberTwo
        label.text = String(divide)
    }
}


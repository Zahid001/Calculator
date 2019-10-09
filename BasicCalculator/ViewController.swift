//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Md Zahidul Islam Mazumder on 24/8/19.
//  Copyright © 2019 Md Zahidul Islam Mazumder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var first = true
    var sign = ""
    var num1 = ""
    var num2 = ""
    var result = ""
    var eq = false
    @IBOutlet weak var screenLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func AC(_ sender: UIButton) {
        num1 = ""
        num2 = ""
        result = ""
        first = true
        screenLabel.text = "0"
    }
    
    func common() {
        num1 = ""
        num2 = ""
        result = ""
        first = true
    }
    
    
    @IBAction func back(_ sender: UIButton) {
        if (num1 != "0" && num2 != "0") || (num1 != "" && num2 != "")  {
            if first {
                num1 = String(num1.dropLast())
                screenLabel.text = num1
            }
            else{
                num2 = String(num2.dropLast())
                screenLabel.text = num2
            }
        }
        
        if screenLabel.text == "" {
            screenLabel.text = "0"
        }
        
        
    }
    
    @IBAction func doubleZero(_ sender: UIButton) {
        if first {
            num1 = num1+"00"
            screenLabel.text = num1
        }
        else{
           num2 = num2+"00"
            screenLabel.text = num2
        }
    }
    
    @IBAction func divide(_ sender: UIButton) {
        first = false
        sign = "/"
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        first = false
        sign = "x"
    }
    
    @IBAction func addition(_ sender: UIButton) {
        first = false
        sign = "+"
    }
    
    @IBAction func minus(_ sender: UIButton) {
        first = false
        sign = "-"
    }
    
    
    @IBAction func three(_ sender: UIButton) {
        if first {
            num1 = num1+"3"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"3"
            screenLabel.text = num2
        }
    }
    
    @IBAction func two(_ sender: UIButton) {
        if first {
            num1 = num1+"2"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"2"
            screenLabel.text = num2
        }
    }
    
    @IBAction func one(_ sender: UIButton) {
        if first {
            num1 = num1+"1"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"1"
            screenLabel.text = num2
        }
    }
    
    @IBAction func four(_ sender: UIButton) {
        if first {
            num1 = num1+"4"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"4"
            screenLabel.text = num2
        }
    }
    
    
    @IBAction func five(_ sender: UIButton) {
        if first {
            num1 = num1+"5"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"5"
            screenLabel.text = num2
        }
    }
    
    
    @IBAction func six(_ sender: UIButton) {
        if first {
            num1 = num1+"6"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"6"
            screenLabel.text = num2
        }
    }
    
    @IBAction func seven(_ sender: UIButton) {
        if first {
            num1 = num1+"7"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"7"
            screenLabel.text = num2
        }
    }
    
    @IBAction func eight(_ sender: UIButton) {
        if first {
            num1 = num1+"8"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"8"
            screenLabel.text = num2
        }
    }
    
    @IBAction func nine(_ sender: UIButton) {
        if first {
            num1 = num1+"9"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"9"
            screenLabel.text = num2
        }
    }
    
    @IBAction func zero(_ sender: UIButton) {
        if first {
            num1 = num1+"0"
            screenLabel.text = num1
        }
        else{
            num2 = num2+"0"
            screenLabel.text = num2
        }
    }
    
    @IBAction func point(_ sender: UIButton) {
        if first {
            num1 = num1+"."
            screenLabel.text = num1
        }
        else{
            num2 = num2+"."
            screenLabel.text = num2
        }
    }
    
    @IBAction func equal(_ sender: UIButton) {
        if num1 != ""  && num2 != "" {
            
            switch sign {
            case "/":
                let n1 = Double(num1)
                let n2 = Double(num2)
                
                screenLabel.text = String(n1! / n2!)
                common()
            case "x":
                let n1 = Double(num1)
                let n2 = Double(num2)
                
                screenLabel.text = String(n1! * n2!)
                common()
            case "-":
                let n1 = Double(num1)
                let n2 = Double(num2)
                
                screenLabel.text = String(n1! - n2!)
                common()
            case "+":
                let n1 = Double(num1)
                let n2 = Double(num2)
                
                screenLabel.text = String(n1! + n2!)
                common()
            default:
                print("abc")
            }
            
        }
        
    }
    
    

}


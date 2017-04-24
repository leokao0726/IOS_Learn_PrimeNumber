//
//  ViewController.swift
//  PrimeNumber
//
//  Created by LeoKao on 2017/4/25.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result_Label: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func checkBtn(_ sender: UIButton) {
        if let inputNum = Int(inputTextField.text!){
            result_Label.text = checkPrime(textNum: inputNum)
        }else{
            result_Label.text = "you enter wrong type."
        }
        result_Label.isHidden = false

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkPrime(textNum:Int) -> String{
        var isPrime = 1
        if textNum <= 0 {
            isPrime = 0 //reenter
        }else if textNum == 1{
            isPrime = 2 //is not prime
        }else{
            for i in 2 ..< textNum{
                if textNum % i == 0{
                    isPrime = 2 //is not prime
                }
            }
        }
        inputTextField.text = ""
        
        switch isPrime{
        case 1:
            return "\(textNum) is prime."
        case 2:
            return "\(textNum) is not prime."
        default:
            return "Plz input number again."
            
        
        }
    }


}


//
//  ViewController.swift
//  Calculator
//
//  Created by user228909 on 10/30/22.
//

import UIKit

class ViewController: UIViewController {

    // Shows the current input / output value
    @IBOutlet weak var lblOutput: UILabel!
    
    // Operation Buttons
    // Performs appropriate math operation
    
    @IBOutlet weak var btnMultiply: UIButton!
    
    @IBOutlet weak var btnDivide: UIButton!
    
    @IBOutlet weak var btnSubtract: UIButton!
    
    @IBOutlet weak var brnAddition: UIButton!
    
    @IBOutlet weak var btnEquals: UIButton!
    
    // Number buttons
    
    @IBOutlet weak var btnNine: UIButton!
    
    
    @IBOutlet weak var btnEight: UIButton!
    
    @IBOutlet weak var btnSeven: UIButton!
    
    
    @IBOutlet weak var btnSix: UIButton!
    
    
    @IBOutlet weak var btnFive: UIButton!
    
    @IBOutlet weak var btnFour: UIButton!
    
    
    @IBOutlet weak var btnThree: UIButton!
    
    
    @IBOutlet weak var btnTwo: UIButton!
    
    
    @IBOutlet weak var btnOne: UIButton!
    
    
    @IBOutlet weak var btnZero: UIButton!
    
    
    @IBOutlet weak var btnPoint: UIButton!
    
    // Operand list for holding & displaying the
    // values input to the calculator
    // ** Note: Should have used stack here
    // No built-in stack in swift
    var lstNumbers:[String] = [""]
    
    // this holds the index in lstNumbers
    //  that is currently being displayed
    // on the Output label
    var displayIndex = 0
    
    // enumeration for the type of
    // mathematical operation chosen
    enum Operation {
        case addition
        case subtraction
        case multiplication
        case division
    }
    
    // holds the current operation choice
    var operation:Operation? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /*
     
     operations buttons ,
     steps:
     1)  add a new empty string on the list
     2)  set operation enumeration
     3)
     */
    @IBAction func divisionTapped(_ sender: Any) {
        operation = Operation.division
        
    }
    
    @IBAction func multiplicationTapped(_ sender: Any) {
    }
    
    @IBAction func subtractionTapped(_ sender: Any) {
    }
    
    @IBAction func additionTapped(_ sender: Any) {
    }
    
    /* function called when an operation button is
     tapped , sets up for the second input
     */
    
    func reset(){
        // advance the index
        displayIndex = 1
        // ensure there is nothing in the
        // list for second operand
        lstNumbers[1] = ""
    }
    
    // performs the operation
    // displays the result
    @IBAction func equalsTapped(_ sender: Any) {
        
        if operation == nil{
            return
        }
        
        switch operation{
        case .addition:
            
        case .subtraction:
        case .multiplication:
        case .division:
            
            
        }
        
    }
    /*
     function called anytime one of the number buttons
     are pressed
     */
    
    func updateDisplay(){
        
        lblOutput.text = lstNumbers[displayIndex]
    }
    
    // 0- 9 button tapped handlers
    
    @IBAction func nineTapped(_ sender: Any) {
        
        updateNumber("9")
    }
    
    @IBAction func eightTapped(_ sender: Any) {
        updateNumber("8")
    }
    
    @IBAction func sevenTapped(_ sender: Any) {
        updateNumber("7")
    }
    
    
    @IBAction func sixTapped(_ sender: Any) {
        updateNumber("6")
    }
    
    
    @IBAction func fiveTapped(_ sender: Any) {
        updateNumber("5")
    }
    
    
    @IBAction func fourTapped(_ sender: Any) {
        updateNumber("4")
    }
    
    @IBAction func threeTapped(_ sender: Any) {
        updateNumber("3")
    }
    
    @IBAction func twoTapped(_ sender: Any) {
        updateNumber("2")
    }
    
    
    @IBAction func oneTapped(_ sender: Any) {
        updateNumber("1")
    }
    
    
    @IBAction func zeroTapped(_ sender: Any) {
        updateNumber("0")
    }
    
    // helper function called when a digit is
    // pressed
    func updateNumber(_ digit:String){
        lstNumbers[displayIndex].append(digit)
        updateDisplay()
        
    }
    
    
    
}


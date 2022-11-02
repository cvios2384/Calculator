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
    var lstNumbers:[String] = ["",""]
    
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
        displayIndex = 0
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
        nextInput()
    }
    
    @IBAction func multiplicationTapped(_ sender: Any) {
        operation = Operation.multiplication
        nextInput()
    }
    
    @IBAction func subtractionTapped(_ sender: Any) {
        operation = Operation.subtraction
        nextInput()
    }
    
    @IBAction func additionTapped(_ sender: Any) {
        operation = Operation.addition
        nextInput()
    }
    
    func nextInput(){
        // advance index
        displayIndex = 1
        
    }
    
    // performs the operation
    // displays the result
    @IBAction func equalsTapped(_ sender: Any) {
        
        // don't do anything if
        // the user hasn't selected an
        // operation , or the pressed
        // equals with only 1 operand
        if operation == nil || lstNumbers[1] == ""{
            return
        }
        // Now we perform the operation
        // based on the operator
        // left number ( first input)
        let l = Double(lstNumbers[0])
        // right number ( second input )
        let r = Double(lstNumbers[1])
        var res:Double? = nil
        switch operation{
        case .addition:
            res = l! + r!
        case .subtraction:
            res = l! - r!
        case .multiplication:
            res = l! * r!
        case .division:
            res = l! / r!
        default:
            print("fell thru switch")
            
        }
        
        // now we apply the result to lstNumbers
        lstNumbers[0] = String(res!)
        // reset everything
        reset()
        
        // update display
        updateDisplay()
        // now we ask for next input
        nextInput()
        
    }
    
    func reset(){
        // reset displayIndex
        displayIndex = 0
        // remove second number
        lstNumbers[1] = ""
        // reset the operation
            operation = nil
        
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
    
    @IBAction func dotPressed(_ sender: Any) {
        updateNumber(".")
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
    
    // clear nubmer list and operation
    @IBAction func allClearTapped(_ sender: Any) {
        displayIndex = 0
        lstNumbers[0] = ""
        lstNumbers[1] = ""
        operation = nil
        // show the user
        lblOutput.text = "0"
        
    }
    
    
}


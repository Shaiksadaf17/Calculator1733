//
//  ViewController.swift
//  Calculator1733
//
//  Created by shaik sadaf patel on 22/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorResult: UILabel!
    var workings: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    func clearAll()
    {
        workings = ""
        calculatorResult.text = "0"
    }
    
    @IBAction func equalsTap(_ sender: UIButton)
    {
        let expression = NSExpression(format: workings)
                if let result = expression.expressionValue(with: nil, context: nil) as? Double {
                    let formattedResult = formatResult(result: result)
                    calculatorResult.text = formattedResult
                    workings = formattedResult
                } else {
                    calculatorResult.text = "Error"
                }
            }
            
            func formatResult(result: Double) -> String {
                return String(format: "%.2f", result)
            }
            
    
    @IBAction func allClearTap(_ sender: UIButton)
    {
        clearAll()
    }
    func addworkings(value: String)
    {
        workings = workings + value
        calculatorResult.text = workings
    }
    
    
    @IBAction func percentageTap(_ sender: UIButton)
    {
        addworkings(value: "%")
    }
    
    
    @IBAction func divideTap(_ sender: UIButton)
    {
        addworkings(value:"/")
    }
    
    
    
    @IBAction func multiplyTap(_ sender: UIButton)
    {
        addworkings(value: "*")
    }
    
    
    
    @IBAction func subtractTap(_ sender: UIButton)
    {
        addworkings(value: "-")
    }
    
    
    @IBAction func plusTap(_ sender: UIButton)
    {
        addworkings(value: "+")
    }
    
    
    @IBAction func decimalTap(_ sender: UIButton)
    {
        if !workings.contains(".") {
                    addworkings(value: ".")
                }
            }

    
    @IBAction func zeroTap(_ sender: UIButton)
    {
        if !workings.isEmpty
        {        addworkings(value: "0")
            
        }
    }
    
    
    @IBAction func threeTap(_ sender: UIButton)
    {
        addworkings(value: "3")
    }
    
    
    @IBAction func twoTap(_ sender: UIButton)
    {
        addworkings(value: "2")
    }
    
    
    
    @IBAction func oneTap(_ sender: UIButton)
    {
        addworkings(value: "1")
    }
    
    
    @IBAction func sixTap(_ sender: UIButton)
    {
        addworkings(value: "6")
    }
    
    
    @IBAction func fiveTap(_ sender: UIButton) {
    }
    
    
    @IBAction func fourTap(_ sender: UIButton)
    {
        addworkings(value: "4")
    }
    
    
    @IBAction func nineTap(_ sender: UIButton)
    {
        addworkings(value: "9")
    }
    
    
    @IBAction func eightTap(_ sender: UIButton)
    {
        addworkings(value: "8")
    }
    
    
    @IBAction func sevenTap(_ sender: UIButton)
    {
        addworkings(value: "7")
    }
    
    
    
    
    
    
}


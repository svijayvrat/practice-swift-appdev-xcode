//
//  ViewController.swift
//  Calculator
//
//  Created by GEU on 30/10/25.
//

import UIKit

class ViewController: UIViewController {
    var expression:[String]=[]
    var numStr:String=""
    var tempStr:String=""
    struct stack<String> {
        private var elements: [String] = []
        mutating func push(_ element: String) {
            elements.append(element)
        }
        mutating func pop() -> String? {
            return elements.popLast()
        }
        func top() -> String {
            return elements.last!
        }
        var isEmpty: Bool{
            return elements.isEmpty
        }
    }
    @IBOutlet var calculatedOutput: UILabel!
    @IBOutlet var pastInputs: UILabel!
    @IBOutlet var buttonOneRow: [UIButton]!
    @IBOutlet var buttonTwoRow: [UIButton]!
    @IBOutlet var buttonThreeRow: [UIButton]!
    @IBOutlet var zero: UIButton!
    @IBAction func clearOutput(_ sender: Any) {
        calculatedOutput.text="0"
        numStr=""
        pastInputs.text=""
        expression=[]
        tempStr=""
    }
    @IBAction func zeroTouched(_ sender: Any) {
        tempStr+="0"
        calculatedOutput.text=numStr+tempStr
    }
    @IBAction func buttonOneRowTouched(_ sender: Any) {
        if buttonOneRow[0].isTouchInside{
            tempStr+="1"
        }else if buttonOneRow[1].isTouchInside{
            tempStr+="2"
        }else{
            tempStr+="3"
        }
        calculatedOutput.text=numStr+tempStr
    }
    @IBAction func buttonTwoRowTouched(_ sender: Any) {
        if buttonTwoRow[0].isTouchInside{
            tempStr+="4"
        }else if buttonTwoRow[1].isTouchInside{
            tempStr+="5"
        }else{
            tempStr+="6"
        }
        calculatedOutput.text=numStr+tempStr
    }
    @IBAction func buttonThreeRowTouched(_ sender: Any) {
        if buttonThreeRow[0].isTouchInside{
            tempStr+="7"
        }else if buttonThreeRow[1].isTouchInside{
            tempStr+="8"
        }else{
            tempStr+="9"
        }
        calculatedOutput.text=numStr+tempStr
    }
    @IBAction func addition(_ sender: Any) {
        expression.append(tempStr)
        expression.append("+")
        numStr+="\(tempStr)+"
        tempStr=""
        calculatedOutput.text=numStr
    }
    @IBAction func difference(_ sender: Any) {
        expression.append(tempStr)
        expression.append("-")
        numStr+="\(tempStr)-"
        tempStr=""
        calculatedOutput.text=numStr
    }
    @IBAction func multiply(_ sender: Any) {
        expression.append(tempStr)
        expression.append("*")
        numStr+="\(tempStr)*"
        tempStr=""
        calculatedOutput.text=numStr
    }
    @IBAction func division(_ sender: Any) {
        expression.append(tempStr)
        expression.append("/")
        numStr+="\(tempStr)/"
        tempStr=""
        calculatedOutput.text=numStr
    }
    @IBAction func modulus(_ sender: Any) {
        expression.append(tempStr)
        expression.append("%")
        numStr+="\(tempStr)%"
        tempStr=""
        calculatedOutput.text=numStr
    }
    @IBAction func changeSign(_ sender: Any) {
        if tempStr.first=="-"{
            tempStr.remove(at: tempStr.startIndex)
        }else{
            tempStr.insert("-", at: tempStr.startIndex)
        }
        calculatedOutput.text=numStr+tempStr
    }
    @IBAction func decimalPointTouched(_ sender: Any) {
        tempStr+="."
        calculatedOutput.text=numStr+tempStr
    }
    @IBAction func evaluate(_ sender: Any) {
        expression.append(tempStr)
        let postfix:[String]=evaluatePostfix(expr: expression)
        var st=stack<String>()
        for j in 0...postfix.count-1{
            let i=postfix[postfix.index(postfix.startIndex, offsetBy: j)]
            if i[i.index(i.endIndex, offsetBy: -1)]>="0" && i[i.index(i.endIndex, offsetBy: -1)]<="9"{
                st.push(i)
            }else{
                let y=Double(String(st.pop()!))!
                let x=Double(String(st.pop()!))!
                var res:Double=0
                if i=="+"{
                    res=x+y
                }else if i=="-"{
                    res=x-y
                }else if i=="/"{
                    res=x/y
                }else if i=="%"{
                    res=y.truncatingRemainder(dividingBy: x)
                }else{
                    res=x*y
                }
                st.push("\(res)")
            }
        }
        let res=Double(String(st.pop()!))!
        calculatedOutput.text="\(res)"
        numStr=""
        pastInputs.text=""
        expression=[]
        tempStr="\(res)"
    }
    func evaluatePostfix(expr:[String])->[String]{
        var st=stack<String>()
        var res:[String]=[]

        for i in 0...expr.count-1 {
            let index=expr.index(expr.startIndex, offsetBy: i)
            let c = expr[index]
            print(c)
            // If operand, add to result
            if (c[c.index(c.endIndex, offsetBy: -1)] >= "0" && c[c.index(c.endIndex, offsetBy: -1)] <= "9"){
                res.append(String(c))
            }
            // If '(', push to stack
            else if (c == "("){
                st.push("(")
            }
            // If ')', pop until '('
            else if (c == ")") {
                while (!st.isEmpty && st.top() != "(") {
                    res.append(String(st.top()))
                    _=st.pop()
                }
                _=st.pop()
            }
            // If operator
            else {
                while (!st.isEmpty && st.top() != "(" &&
                       (prec(st.top()) > prec(c) ||
                       (prec(st.top()) == prec(c) && !isRightAssociative(c)))) {
                    res.append(String(st.top()))
                    _=st.pop()
                }
                st.push(c);
            }
        }

        // Pop remaining operators
        while (!st.isEmpty) {
            res.append(String(st.top()))
            _=st.pop()
        }

        return res;
    }
    func prec(_ c:String)->Int{
        if (c == "^"){
            return 3;
        }else if (c == "/" || c == "*" || c=="%"){
                    return 2;
        }else if (c == "+" || c == "-"){
            return 1;
        }else{
            return -1;
        }
    }
    func isRightAssociative(_ c:String)->Bool{
        return c=="^"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


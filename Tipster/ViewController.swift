//
//  ViewController.swift
//  Tipster
//
//  Created by Aamer Essa on 10/11/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputLabel: UILabel!
    
    @IBOutlet weak var labelGroupSize: UILabel!
    @IBOutlet weak var resualtNumberOfPeopleThree: UILabel!
    @IBOutlet weak var resualtNumberOfPeopleTwo: UILabel!
    @IBOutlet weak var resaultNumberOfPeopleOne: UILabel!
    @IBOutlet weak var resualtTipThree: UILabel!
    @IBOutlet weak var resualtTipTwo: UILabel!
    @IBOutlet weak var resualtTipOne: UILabel!
    @IBOutlet weak var numberOfPeople: UISlider!
    @IBOutlet weak var tipThree: UILabel!
    @IBOutlet weak var tipTwo: UILabel!
    @IBOutlet weak var tipOne: UILabel!
    @IBOutlet weak var BtnZero: UIButton!
    @IBOutlet weak var clearBtn: UIButton!
    @IBOutlet weak var pointBtn: UIButton!
    @IBOutlet weak var BtnSeven: UIButton!
    @IBOutlet weak var BtnSix: UIButton!
    @IBOutlet weak var BtnFive: UIButton!
    @IBOutlet weak var BtnFour: UIButton!
    @IBOutlet weak var tips: UISlider!
    @IBOutlet weak var BtnThree: UIButton!
    @IBOutlet weak var BtnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnNine: UIButton!
    @IBOutlet weak var BtnEight: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        inputLabel.text = ""
        
    }
    @IBAction func onClickOne(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)1"
    }
    
    @IBAction func onClickBtnTwo(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)2"
    }
    
    @IBAction func onClickBtnThree(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)3"
    }
    
    @IBAction func onClickBtnFour(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)4"
    }
    
    @IBAction func onClickBtnFive(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)5"
    }
    @IBAction func onClickBtnSix(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)6"
    }
    
    @IBAction func onClickBtnSeven(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)7"
    }
    
    @IBAction func onClickBtnEight(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)8"
    }
    
    @IBAction func onClickBtnNine(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)9"
    }
    
    @IBAction func onClickPointBtn(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)."
    }
    
    @IBAction func onClickClearBtn(_ sender: Any) {
        inputLabel.text = ""
        resualtTipOne.text = "0.00"
        resualtTipTwo.text = "0.00"
        resualtTipThree.text = "0.00"
        resaultNumberOfPeopleOne.text = "0.00"
        resualtNumberOfPeopleTwo.text = "0.00"
        resualtNumberOfPeopleThree.text = "0.00"
    }
    @IBAction func onCLickBtnZero(_ sender: Any) {
        inputLabel.text = "\(inputLabel.text!)0"
    }
    
    @IBAction func onChangeTip(_ sender: Any) {
        
        let tip_one = tips.value == 100.0 ? 100.0 : tips.value+10
        let tip_two = tips.value == 100.0 ? 100.0 : tips.value+5
        
        tipOne.text = "\(Int(tip_one))%"
        tipTwo.text = "\(Int(tip_two))%"
        tipThree.text = "\(Int(tips.value))%"

        let resualt_Tip_One = (Float(inputLabel.text!) ?? 0.00) * tip_one/100
        let resualt_Tip_Two = (Float(inputLabel.text!) ?? 0.00) * tip_two/100
        let resualt_Tip_Three = (Float(inputLabel.text!) ?? 0.00) * tips.value/100
       
        resualtTipOne.text = String(format:"%.2f", resualt_Tip_One)
        resualtTipTwo.text = String(format: "%.2f", resualt_Tip_Two)
        resualtTipThree.text = String(format: "%.2f", resualt_Tip_Three)
         
    }
    
    
    @IBAction func onChangeNumberOfPeople(_ sender: Any) {
        
        let totalAmountOfTipOne = (Float(resualtTipOne.text!) ?? 0.00) + (Float(inputLabel.text!) ?? 0.00)
        
        let totalAmountOfTipTwo = (Float(resualtTipTwo.text!) ?? 0.00) + (Float(inputLabel.text!) ?? 0.00)
        
        let totalAmountOfTipThree = (Float(resualtTipThree.text!) ?? 0.00) + (Float(inputLabel.text!) ?? 0.00)
        
        
        let amountOfTipOne = totalAmountOfTipOne / numberOfPeople.value
        let amountOfTipTwo = totalAmountOfTipTwo / numberOfPeople.value
        let amountOfTipThree = totalAmountOfTipThree / numberOfPeople.value
        
        
        
        resaultNumberOfPeopleOne.text = String(format: "%.2f", amountOfTipOne)
        resualtNumberOfPeopleTwo.text = String(format: "%.2f", amountOfTipTwo)
        resualtNumberOfPeopleThree.text = String(format: "%.2f", amountOfTipThree)
        
        labelGroupSize.text = "Group Size \(String(format: "%.0f", numberOfPeople.value))"
    }
    
}


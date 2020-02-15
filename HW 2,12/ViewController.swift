//
//  ViewController.swift
//  HW 2,12
//
//  Created by Arsen Hachuk on 01.02.2020.
//  Copyright © 2020 Arsen Hachuk. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
   
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    @IBOutlet var mainView: UIView!
    
    
    let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
   let done = UIBarButtonItem(title: "Done", style: .done, target: nil, action: #selector(resetTapped))

    override func viewDidLoad() {
        super.viewDidLoad()

        let barTool = UIToolbar()
        
        barTool.items = [flexSpace, done]
        barTool.sizeToFit()
        
        redTextField.inputAccessoryView = barTool
        greenTextField.inputAccessoryView = barTool
        blueTextField.inputAccessoryView = barTool
    }
    
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        redTextField.text = String(format: "%.2f",redSlider.value)
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
       
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f" , greenSlider.value)
        greenTextField.text = String(format: "%.2f",greenSlider.value)
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
     
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f",blueSlider.value)
        blueTextField.text = String(format: "%.2f",blueSlider.value)
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
    }

    @objc func resetTapped(){
        
        let redVal = (redTextField.text! as NSString).floatValue
        let greenVal = (greenTextField.text! as NSString).floatValue
        let blueVal = (blueTextField.text! as NSString).floatValue
        
        redSlider.value = redVal
        greenSlider.value = greenVal
        blueSlider.value = blueVal
        
        mainView.backgroundColor = UIColor(red: CGFloat(redVal), green: CGFloat(greenVal) , blue: CGFloat(blueVal), alpha: 1)
        self.view.endEditing(true)
    }
    
 
}

  

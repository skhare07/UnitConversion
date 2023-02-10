//
//  TempViewController.swift
//  UnitConversion
//
//  Created by Apple on 03/11/1944 Saka.
//

import UIKit

class TempViewController: UIViewController {

    var result : Double = 0
    
    @IBOutlet weak var segFirst: UISegmentedControl!
    
    @IBOutlet weak var segSecond: UISegmentedControl!
    
    @IBOutlet weak var txtValue: UITextField!
    
    @IBOutlet weak var txtResult: UITextField!
    
    @IBAction func segFirstAction(_ sender: UISegmentedControl) {
        
        if segFirst.selectedSegmentIndex == 0 {
            view.backgroundColor = .systemTeal
        }else if segFirst.selectedSegmentIndex == 1 {
            view.backgroundColor = .systemYellow
        }
    
    }
    
    
    @IBAction func segSecondAction(_ sender: UISegmentedControl) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnConvert(_ sender: UIButton) {
        
        convertTo()
    }
    
    func convertTo(){
        
        if  txtValue.text == ""{
            result = Double(0)
        }else if segFirst.selectedSegmentIndex == segSecond.selectedSegmentIndex{
            result = Double(txtValue.text!)!
        }else if segFirst.selectedSegmentIndex == 0 && segSecond.selectedSegmentIndex == 1{
            result = (Double(txtValue.text!)! * 1.8) + 32
        }else if segFirst.selectedSegmentIndex == 1 && segSecond.selectedSegmentIndex == 0{
            result = (Double(txtValue.text!)! - 32) * 0.5556
        }
    
        txtResult.text = String(result)
    
    
    }

}

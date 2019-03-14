//
//  ViewController.swift
//  IMC
//
//  Created by Maximiliano da Cruz on 13/03/19.
//  Copyright © 2019 Maximiliano da cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfAltura: UITextField!
    @IBOutlet weak var lbIMC: UILabel!
    @IBOutlet weak var lbResult: UILabel!
    var imc: Double = 0
    
    
    @IBAction func btCalcularIMC(_ sender: Any) {
        if let peso = Double(tfPeso.text!), let altura = Double(tfAltura.text!) {
            imc = peso / (altura*altura)
            showResults()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func showResults() {
        var result: String = ""
        
        switch imc {
        case 0..<16:
            result = "Magreza"
        case 16..<18.5:
            result = "Abaixo do peso"
        case 18.5..<25:
            result = "Peso ideal"
        case 25..<30:
            result = "Sobrepeso"
        default:
            result = "Obesidade"
        }
        
        lbIMC.text = "IMC: \(Int(imc))"
        lbResult.text = "\(result)"
        view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


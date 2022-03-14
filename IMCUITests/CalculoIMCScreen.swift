//
//  CalculoIMCScreen.swift
//  IMCUITests
//
//  Created by Maximiliano Alves on 13/03/22.
//  Copyright © 2022 Maximiliano da cruz. All rights reserved.
//

import Foundation
import XCTest

class CalculoIMCScreen {
    
    let app:XCUIApplication
    let tfPeso:XCUIElement
    let tfAltura: XCUIElement
    let btnCalcular: XCUIElement
    let imcResultado:XCUIElement
    let imcResultadoFrase:XCUIElement
   
    init(app: XCUIApplication) {
        self.app = app
        tfPeso = app.textFields["tfPeso"]
        tfAltura = app.textFields["tfAltura"]
        btnCalcular = app.buttons["buttonCalcular"]
        imcResultado = app.staticTexts["imcResultado"]
        imcResultadoFrase = app.staticTexts["imcResultadoFrase"]
    }
    
    func fillTfPeso(peso:String) {
        tfPeso.tap()
        tfPeso.typeText(peso)
    }
    
    func fillTfAltura(altura:String) {
        tfAltura.tap()
        tfAltura.typeText(altura)
    }
    
    func tapBtnCalcular() {
        btnCalcular.tap()
    }
    
    func textImcResultado() -> String {
        return imcResultado.label
    }
    
    func textImcResultadoFrase() -> String {
        return imcResultadoFrase.label
    }
    
}

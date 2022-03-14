//
//  IMCUITests.swift
//  IMCUITests
//
//  Created by Maximiliano Alves on 13/03/22.
//  Copyright © 2022 Maximiliano da cruz. All rights reserved.
//

import XCTest

class IMCUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        let app = XCUIApplication()
        let calculoIMCScreen = CalculoIMCScreen(app: app)
        
        app.launch()
        
        calculoIMCScreen.fillTfPeso(peso: "80")
        calculoIMCScreen.fillTfAltura(altura: "1.80")
        calculoIMCScreen.tapBtnCalcular()
        
        XCTAssertEqual("IMC: 24", calculoIMCScreen.textImcResultado())
        XCTAssertEqual("Peso ideal", calculoIMCScreen.textImcResultadoFrase())
    }
}

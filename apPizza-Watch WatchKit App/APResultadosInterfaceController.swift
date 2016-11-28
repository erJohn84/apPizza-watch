//
//  APResultadosInterfaceController.swift
//  apPizza-Watch
//
//  Created by macbook on 28/11/2016.
//  Copyright © 2016 John Veronelli. All rights reserved.
//

import WatchKit
import Foundation


class APResultadosInterfaceController: WKInterfaceController {
    
    @IBOutlet var ingredientes: WKInterfaceTable!
    @IBOutlet var confirmarButton: WKInterfaceButton!
    
    var pizza = Pizza()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        if pizza.tamano == "" && pizza.masa == "" && pizza.queso == "" && pizza.arrayIngredientes.count == 0 {
            confirmarButton.setEnabled(false)
        } else {
            confirmarButton.setEnabled(true)
        }
        // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
        tableRefresh()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func tableRefresh(){
        ingredientes.setNumberOfRows(pizza.arrayIngredientes.count + 3, withRowType: "res")
        for index in 0 ..< ingredientes.numberOfRows {
            switch index {
            case 0:
                let row = ingredientes.rowControllerAtIndex(index) as! APResultadosRow
                row.ingredientes.setText(pizza.tamano)
            case 1:
                let row = ingredientes.rowControllerAtIndex(index) as! APResultadosRow
                row.ingredientes.setText(pizza.masa)
            case 2:
                let row = ingredientes.rowControllerAtIndex(index) as! APResultadosRow
                row.ingredientes.setText(pizza.queso)
            case 3..<pizza.arrayIngredientes.count+3:
                let row = ingredientes.rowControllerAtIndex(index) as! APResultadosRow
                row.ingredientes.setText(pizza.arrayIngredientes[index-3])
            default:
                break
            }
        }
    }
}

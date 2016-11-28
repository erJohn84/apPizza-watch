//
//  APIngredientesInterfaceController.swift
//  apPizza-Watch
//
//  Created by John Veronelli on 24/11/2016.
//  Copyright © 2016 John Veronelli. All rights reserved.
//

import WatchKit
import Foundation


class APIngredientesInterfaceController: WKInterfaceController {

    @IBOutlet var ingredientes: WKInterfaceTable!
    @IBOutlet weak var confirmButton: WKInterfaceButton!
    
    var pizza = Pizza()
    var ings: [(String)] = ["Jamon", "Pepperoni", "pimientos", "salchicha", "aceituna", "cebolla"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        pizza.arrayIngredientes.removeAll()
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
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "ingredientes"{
            return pizza
        }
        return nil
    }
    
    func tableRefresh(){
        ingredientes.setNumberOfRows(ings.count, withRowType: "row")
        for index in 0 ..< ingredientes.numberOfRows {
            let row = ingredientes.rowControllerAtIndex(index) as! APIngredientesRow
            row.ingredientes.setText(ings[index])
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let row = ingredientes.rowControllerAtIndex(rowIndex) as! APIngredientesRow
        pizza.arrayIngredientes.append(ings[rowIndex])
        row.ingredientes.setTextColor(UIColor.grayColor())
    }
}

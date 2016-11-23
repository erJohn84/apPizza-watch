//
//  pizza.swift
//  apPizza-Watch
//
//  Created by John Veronelli on 23/11/2016.
//  Copyright © 2016 John Veronelli. All rights reserved.
//

import Foundation
import UIKit

class Pizza {
    
    var tamano:String?
    var masa:String?
    var queso:String?
    var ingredientes:String?
    
    init(tamano: String, masa: String,queso: String,ingredientes:String) {
        self.tamano = tamano
        self.masa = masa
        self.queso = queso
        self.ingredientes = ingredientes
    }
}

//
//  pizza.swift
//  apPizza-Watch
//
//  Created by John Veronelli on 23/11/2016.
//  Copyright © 2016 John Veronelli. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    var tamano: String = ""
    var masa: String = ""
    var queso: String = ""
    var arrayIngredientes:[String] = []
    
    override init(){
        
    }
    
    init(p:Pizza){
        tamano = p.tamano
        masa = p.masa
        queso = p.queso
        arrayIngredientes = p.arrayIngredientes
    }
}
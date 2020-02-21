//
//  Alumno.swift
//  Examen
//
//  Created by Tecnologico Roque on 2/21/20.
//  Copyright © 2020 Tecnologico Roque. All rights reserved.
//

import Foundation
class Alumno {
    var nombre : String = ""
    var cal1 : Double = 0.0
    var cal2 : Double = 0.0
    var cal3 : Double = 0.0
    var cal4 : Double = 0.0
    var promedio : Double = 0.0
    init(nom : String, c1 : Double, c2 : Double, c3 : Double, c4 : Double, prom : Double){
        self.nombre = nom
        self.cal1 = c1
        self.cal2 = c2
        self.cal3 = c3
        self.cal4 = c4
        self.promedio = prom
    }
}

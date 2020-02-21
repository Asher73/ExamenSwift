//
//  ViewController.swift
//  Examen
//
//  Created by Tecnologico Roque on 2/21/20.
//  Copyright © 2020 Tecnologico Roque. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbalerta: UILabel!
    @IBOutlet weak var txtcal4: UITextField!
    @IBOutlet weak var txtcal3: UITextField!
    @IBOutlet weak var txtcal2: UITextField!
    @IBOutlet weak var txtcal1: UITextField!
    @IBOutlet weak var txtnombre: UITextField!
    var alumno = [Alumno]()
    var c1 : Double = 0.0
    var c2 : Double = 0.0
    var c3 : Double = 0.0
    var c4 : Double = 0.0
    var promedio : Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnPromedio(_ sender: UIButton) {
        if txtnombre.text!.isEmpty || txtcal1.text!.isEmpty || txtcal2.text!.isEmpty || txtcal3.text!.isEmpty || txtcal4.text!.isEmpty {
            alerta(title: "Campos vacios", message: "Complete el formulario")
            txtnombre.becomeFirstResponder()
        }else{
            c1 = Double(txtcal1.text!)!
            c2 = Double(txtcal2.text!)!
            c3 = Double(txtcal3.text!)!
            c4 = Double(txtcal4.text!)!
            promedio = (c1 + c2 + c3 + c4)/4
            alumno.append(Alumno(nom: txtnombre.text!, c1: c1, c2: c2, c3: c3, c4: c4, prom: promedio))
            alerta(title: String(promedio) , message: "Verifique dando click en consulta")
        }
    }
    @IBAction func btnConsulta(_ sender: UIButton) {
        self.performSegue(withIdentifier: "sgLista", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgLista"{
            let Lista = segue.destination as! TableViewController
            Lista.alumno = alumno
        }
    }
    func alerta(title: String, message: String){
        let alertGuia = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertaOK = UIAlertAction(title: "Aceptar", style: .default){
            (action) in self.lbalerta.text = ""
        }
        let alertCancelar = UIAlertAction(title: "Cancelar", style: .default, handler:{
            (action) in self.lbalerta.text = ""
        })
        alertGuia.addAction(alertaOK)
        alertGuia.addAction(alertCancelar)
        present(alertGuia, animated: true, completion: nil)
    }

}


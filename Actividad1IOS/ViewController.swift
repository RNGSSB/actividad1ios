//
//  ViewController.swift
//  Actividad1IOS
//
//  Created by Alumno on 22/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoArriba: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var pantalla: UIView!
    @IBOutlet weak var textoNumero: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButton(_ sender: UIButton) {
        let randomInt = Int.random(in: 1..<7);
        questionLabel.text = String(randomInt);
        if(textoNumero.text == String(randomInt)){
            textoArriba.text = "Que pro papu"
            pantalla.backgroundColor = UIColor.green;
        }else{
            pantalla.backgroundColor = UIColor.red;
            textoArriba.text = "owned"
        }
        
    }
    
}


//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Felipe Miranda on 31/07/20.
//  Copyright © 2020 Digital House. All rights reserved.
//

import UIKit

class CalculadoraVC: BaseViewController {

    @IBOutlet weak var resultadoLabel: UILabel!
   
    @IBOutlet weak var calcView: CalculadoraView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.calcView.setupView()
        self.setupView()
        // Do any additional setup after loading the view.
    }

    @IBAction func clicouCalcularButton(_ sender: UIButton) {
    
        self.resultadoLabel.text = self.calcView.calcularIMC()
    
    }
    
    override func setupView() {
        self.calcView.setupView()
        self.view.backgroundColor = .green
    }
}


//
//  DetalheCarroVC.swift
//  MVC
//
//  Created by Felipe Miranda on 06/10/20.
//

import UIKit

class DetalheCarroVC: UIViewController {

    @IBOutlet weak var resultadoLabel: UILabel!
    
    var controller: ListaCarrosController = ListaCarrosController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.resultadoLabel.text = self.controller.modeloCarroSorteado
        // Do any additional setup after loading the view.
    }

}

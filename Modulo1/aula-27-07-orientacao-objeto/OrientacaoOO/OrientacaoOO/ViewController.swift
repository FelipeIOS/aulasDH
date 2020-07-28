//
//  ViewController.swift
//  OrientacaoOO
//
//  Created by Felipe Miranda on 27/07/20.
//  Copyright © 2020 Digital House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var animal: Animal = Animal(tamanho: "Grande", raca: "Golden", cor: "Branco", qtdPatas: 4, genero: "Macho", especie: "Cachorro", idade: 4)
        
        print(animal.raca)
        
        var animal2: Animal2 = Animal2(tamanho: "pequeno", raca: "pitBul", cor: "cinza", qtdPatas: 4, genero: "macho", especie: "Cachorro", idade: 4)
        

    }
}


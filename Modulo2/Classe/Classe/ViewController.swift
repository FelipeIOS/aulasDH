//
//  ViewController.swift
//  Classe
//
//  Created by Felipe Miranda on 09/09/20.
//  Copyright © 2020 Digital House. All rights reserved.
//

import UIKit

class Veiculo {
    
    var modelo: String?
    var ano: Int?
    var cor: String?
    
    init(modelo: String? = "civic", ano: Int?, cor: String?) {
        
        self.modelo = modelo
        self.ano = ano
        self.cor = cor
    }
    
}

class Caminhao: Veiculo{
    
    var porte: Int?
    var qtdEixos: Int?
    
    init(modelo: String?, ano: Int?, cor: String?, porte: Int?, qtdEixos: Int?) {
        
        super.init(modelo: modelo, ano: ano, cor: cor)
        self.porte = porte
        self.qtdEixos = qtdEixos
    }
}

class Aviao: Veiculo {
    
    var cabine: Bool?
    var qtdTurbina: Int?
    var asas: Bool?
    
    init(modelo: String?, ano: Int?, cor: String?, cabine: Bool?, qtdTurbina: Int?, asas: Bool?) {
        
        super.init(modelo: modelo, ano: ano, cor: cor)
        self.cabine = cabine
        self.qtdTurbina = qtdTurbina
        self.asas = asas
    }
    
    
    func levantarVoo() {
        print("Voando")
    }
    
    func pousar() {
        print("pousando")
    }
    
    func abastacer(qtdLitros: Float) {
        
        print("O aviao \(self.modelo ?? "") esta abastecendo \(qtdLitros) litros de combustivel")
    }
    
    func checkTurbinas(turbinas: Int) -> String {
        
//        if let _qtdTurbina = self.qtdTurbina {
//
//
//        }
        
        guard let _qtdTurbina = self.qtdTurbina else{return "Tacale pau o aviao nao tem turbina"}
        
        if turbinas == _qtdTurbina {
            return "Todas as turbinas foram checadas, podemos levantar voo"
        }
        
        let turbinasNaoOk: Int = _qtdTurbina - turbinas
        
        return "Ainda faltam \(turbinasNaoOk) turbinas para serem checadas"
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var carro1: Veiculo = Veiculo(ano: 2010, cor: "preto")
        var carro2: Veiculo = Veiculo(modelo: "Polo", ano: 2010, cor: "azul")
        print(carro1.modelo)
        print(carro2.modelo)
        
        var caminhao1: Caminhao = Caminhao(modelo: "Volvo8", ano: 2015, cor: "Branco", porte: 3, qtdEixos: 8)
        
        print(caminhao1.modelo)
        print(caminhao1.ano)
        print(caminhao1.cor)
        print(caminhao1.porte)
        print(caminhao1.qtdEixos)
        
        
        var aviao: Aviao = Aviao(modelo: "A320", ano: 2020, cor: "Dourado", cabine: true, qtdTurbina: 4, asas: true)
        
        
        print("Aviao======")
        print(aviao.modelo)
        print(aviao.ano)
        print(aviao.cor)
        print(aviao.cabine)
        print(aviao.qtdTurbina)
        print(aviao.asas)
        
        aviao.levantarVoo()
        aviao.pousar()
        aviao.abastacer(qtdLitros: 50.8)
        
        
        var aviao2: Aviao = Aviao(modelo: "A320", ano: 2020, cor: "Dourado", cabine: true, qtdTurbina: 6, asas: true)
        
        print(aviao2.checkTurbinas(turbinas: 6))
        
    }

}






//
//  ListaCarrosController.swift
//  MVC
//
//  Created by Felipe Miranda on 01/10/20.
//

import Foundation


class ListaCarrosController {
    
    private var arrayCarros:[Carro] = [Carro(modelo: "Civic", ano: 2010, cor: "Preto"),Carro(modelo: "Corola", ano: 2015, cor: "Cinza"),Carro(modelo: "Palio", ano: 2006, cor: "Preto"),Carro(modelo: "Punto", ano: 2012, cor: "Azul"),Carro(modelo: "Punto", ano: 2012, cor: "Azul")]
    
    
    var arrayCarrosCount: Int {
        
        return self.arrayCarros.count
    }
    
    
    func modeloCarro(indexPath: IndexPath) -> String {
        
        return arrayCarros[indexPath.row].modelo ?? ""
    }
    
    func anoCarro(indexPath: IndexPath) -> String {
        
        return "\(arrayCarros[indexPath.row].ano ?? 0)"
    }
    
    func corCarro(indexPath: IndexPath) -> String {
        
        return arrayCarros[indexPath.row].cor ?? ""
    }
    
    func sortearCarro() -> String {
        
        
        if self.arrayCarros.count > 4 {
            let carro = self.arrayCarros.randomElement()
            return "\(carro?.modelo ?? ""), \(carro?.ano ?? 0), \(carro?.cor ?? "") "
        }
        
        return "Precisamos de mais carros para o sorteio"
        
    }
    
}

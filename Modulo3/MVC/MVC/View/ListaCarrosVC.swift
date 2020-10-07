//
//  ViewController.swift
//  MVC
//
//  Created by Felipe Miranda on 01/10/20.
//

import UIKit

class ListaCarrosVC: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    let controller: ListaCarrosController = ListaCarrosController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clicouSortearButton(_ sender: UIButton) {
               
        self.resultadoLabel.text = self.controller.sortearCarro()

        self.performSegue(withIdentifier: "DetalheCarroVC", sender: nil)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc: DetalheCarroVC? = segue.destination as? DetalheCarroVC
        vc?.controller = self.controller
        
    }

}

extension ListaCarrosVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.controller.arrayCarrosCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
        cell.textLabel?.text = self.controller.modeloCarro(indexPath: indexPath)
        cell.detailTextLabel?.text = self.controller.anoCarro(indexPath: indexPath)
               
        return cell
    }
}

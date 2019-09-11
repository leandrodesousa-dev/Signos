//
//  ExtensionViewController.swift
//  Signos
//
//  Created by Leandro de Sousa Silva on 11/09/19.
//  Copyright © 2019 AcademyMistic. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    //MARK: Inicial
    //É obrigatório ter esses dois comando quando usa delegate e o data source da table view, number of rows in section e cell for row at
    
    //números de linhas em uma seção
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentSignos.count
    }
    
    //aqui modificamos a cell em cada linha
    //modificações e tudo que precisamos
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //tem que identificar a cell no storyboad, clicando na cell e indo Table View Cell e identifier colocando o nome
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        insertContentCell(indexPath, cell)
        
        return cell
    }
    
    //funcao da table view que indica qual linha da cell eu estou selecionando, quando clica executa alguma ação
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //criacao do alert, usando alert controller para o corpo do alert e alert action para botões de cancelar, confirmar e etc
        //usei present porque o alert controller é uma filha da UIViewController
        let dateContentSignos = contentSignos[indexPath.row]
    
        let alert = UIAlertController(title: "Descrição", message: getContent(ofSignos: dateContentSignos, whatKey: meanging), preferredStyle: .alert)
        let buttonAlert = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(buttonAlert)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    //Funcão que coloca o nome em cada cell da table 
    fileprivate func insertContentCell(_ indexPath: IndexPath, _ cell: UITableViewCell) {
        let dateContentSignos = contentSignos[indexPath.row]
        
        cell.textLabel?.text = getContent(ofSignos: dateContentSignos, whatKey: name)
       
    }
    
    
}

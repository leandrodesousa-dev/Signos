//Esse projeto é uma atividade para fixar uma forma de fazer uma table view pelo story board, usando view controller e depois colocando a table view e cell

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    //MASK: Inicial
    //É obrigatório ter esses dois comando quando usa delegate e o data source da table view, number of rows in section e cell for row at
    
    //números de linhas em uma seção
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //aqui modificamos a cell em cada linha
    //modificações e tudo que precisamos
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       cell.backgroundColor = .red
        return cell
    }
    
    // é necessário dizer que table view pegará da própria view o delegate e data source
    // lembrando que temos que colocar o delegate e data source na view controller no storyboard, usando o control e setando no quadradinho amarelo, vai aparecer, é só colocar
    fileprivate func setupTable() {
        tableView.delegate = self
        tableView.dataSource = self
    }

    //MASK: Outra Parte
    

}


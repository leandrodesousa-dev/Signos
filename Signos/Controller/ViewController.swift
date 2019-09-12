//Esse projeto é uma atividade para fixar uma forma de fazer uma table view pelo story board, usando view controller e depois colocando a table view e cell

import UIKit

class ViewController: UIViewController {

    //MARK: Outlet
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageLogo: UIImageView!
    
    //variaveis
    var contentSignos = dateContent()
    let name = "name"
    let meanging = "meanging"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageLogo()
    }
    
    fileprivate func setupImageLogo() {
        imageLogo.image = UIImage(named: "signos")
        imageLogo.contentMode = .scaleAspectFit
        imageLogo.backgroundColor = UIColor(red: 196, green: 211, blue: 223)
    }
    
}

// é necessário dizer que table view pegará da própria view o delegate e data source
// lembrando que temos que colocar o delegate e data source na view controller no storyboard, usando o control e setando no quadradinho amarelo, vai aparecer, é só colocar
//não é necessário quando colocamos direto no story board
//    fileprivate func setupTable() {
//        tableView.delegate = self
//        tableView.dataSource = self
//    }

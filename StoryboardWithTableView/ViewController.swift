//
//  ViewController.swift
//  StoryboardWithTableView
//
//  Created by João Victor Ferreira Pimenta on 05/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myFirstTableView: UITableView!
    
    @IBOutlet weak var myFirstLabel: UILabel!
    lazy var myFirstTableViewDataSource = MyFirstTableViewDataSource()
    
    
    override func viewDidLoad() {
        super.viewDidLoad() //tela abriu
        myFirstLabel.text = "Sem Seleção"
        myFirstTableView.delegate = self
        myFirstTableView.dataSource = myFirstTableViewDataSource
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myFirstTableViewDataSource.data[indexPath.row])
        myFirstLabel.text = "\(myFirstTableViewDataSource.data[indexPath.row])"
    }
}

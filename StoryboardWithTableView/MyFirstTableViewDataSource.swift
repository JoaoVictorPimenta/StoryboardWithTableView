//
//  MyFirstTableViewDataSource.swift
//  StoryboardWithTableView
//
//  Created by João Victor Ferreira Pimenta on 05/05/22.
//

import UIKit

class MyFirstTableViewDataSource: NSObject, UITableViewDataSource {
    
    var data = ["Paula","Thallis","Bi","Pimenta","Claudinha","Chevis","Marcus"]

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myFirstCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = data[indexPath.row]
        
        cell.contentConfiguration = content
        
        return cell
    }
}

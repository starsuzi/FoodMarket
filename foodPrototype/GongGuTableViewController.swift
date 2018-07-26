//
//  GongGuTableViewController.swift
//  foodPrototype
//
//  Created by 방문사용자 on 2018. 7. 25..
//  Copyright © 2018년 송. All rights reserved.
//

import UIKit

struct Product {
    var title : String
    var imageName: String
    var keyword: String
    //var leader: String
    //var people: Int 현재 참여하는 사람들 수
    
}

class GongGuTableViewController: UITableViewController {
    
    var data: [Product] = [
        Product(title: "더반찬공구팟 모집", imageName: "pic_thebanchan", keyword: "#닭강정"),
        Product(title: "배민찬공구팟 모집", imageName: "배민찬로고", keyword: "#닭봉봉")
    ]
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        let item: Product = data[indexPath.row]
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.keyword
        cell.imageView?.image = UIImage(named: item.imageName)
        return cell
    }

    

}

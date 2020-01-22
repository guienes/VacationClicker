////
////  UpgradesTableView.swift
////  TreeClicker
////
////  Created by Guilherme Enes on 18/01/20.
////  Copyright © 2020 Guilherme Enes. All rights reserved.
////
//

//import Foundation
//import SpriteKit
//import UIKit
//class UpgradesTableView: UITableView,UITableViewDelegate,UITableViewDataSource{
//    var items: [String] = ["Upgrade"]
//    override init(frame: CGRect, style: UITableView.Style) {
//        super.init(frame: frame, style: style)
//        self.delegate = self
//        self.dataSource = self
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//
//    // MARK: - Table view data source
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")! as! CustomCell
//
//        return cell
//
////        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
////        cell.textLabel?.text = self.items[indexPath.row]
////        return cell
//    }
////    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
////        return ""
////    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("You selected cell #\(indexPath.row)!")
//    }
//}

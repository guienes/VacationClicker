////
////  CustomCell.swift
////  TreeClicker
////
////  Created by Guilherme Enes on 19/01/20.
////  Copyright © 2020 Guilherme Enes. All rights reserved.
////
//
//import Foundation
//import SpriteKit
//
//class CustomCell: UITableViewCell{
//    
//    var texto1: String?
//    var texto2: String?
//    
//    var message: UITextView{
//        var textMessage = UITextView()
//        textMessage.translatesAutoresizingMaskIntoConstraints = false
//        
//        return textMessage
//    }
//    
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//        
//        message.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        message.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        message.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//        message.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
//    
////        setConstraints()
//    }
//    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        if let texto1 = texto1 {
//            message.text = texto1
//        }
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//   
//}

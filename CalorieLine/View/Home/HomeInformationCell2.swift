//
//  HomeInformationCell2.swift
//  CalorieLine
//
//  Created by YBAP on 2019/11/19.
//  Copyright © 2019 YBAP. All rights reserved.
//

import UIKit

class HomeInformationCell2: UICollectionViewCell {
    
    let titleLabel = UILabel(text: "Cell2", font: .boldSystemFont(ofSize: 30))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        
        addSubview(titleLabel)
        titleLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 0))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

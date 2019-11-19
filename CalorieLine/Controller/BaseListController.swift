//
//  BaseListController.swift
//  AppStoreJSONApi
//
//  Created by YBAP on 2019/10/22.
//  Copyright © 2019 YBAP. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {
    
    // CollectionViewController 필수메서드 해당 컨트롤러에 구현(중복 최소화)
    // init과 requred init은 필수 메서드, 해당 메서드가 없으면 non-nil Layoutparameter는 불가능
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

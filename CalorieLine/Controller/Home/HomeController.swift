//
//  HomeController.swift
//  CalorieLine
//
//  Created by YBAP on 2019/11/18.
//  Copyright © 2019 YBAP. All rights reserved.
//

import UIKit

class HomeController: BaseListController, UICollectionViewDelegateFlowLayout, UIGestureRecognizerDelegate {
    
    let headerId = "HomeHeaders"
    let homeInformationCell1Id = "homeInformationCell1Id"
    let homeInformationCell2Id = "homeInformationCell2Id"
    let homeInformationCell3Id = "homeInformationCell3Id"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        collectionView.backgroundColor = #colorLiteral(red: 0.9489366412, green: 0.9490727782, blue: 0.9489069581, alpha: 1)
        collectionView.register(HomeInformationCell1.self, forCellWithReuseIdentifier: homeInformationCell1Id)
        collectionView.register(HomeInformationCell2.self, forCellWithReuseIdentifier: homeInformationCell2Id)
        collectionView.register(HomeInformationCell3.self, forCellWithReuseIdentifier: homeInformationCell3Id)
        collectionView.register(HomeHeaders.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        
    }
    
    // HomeHeader 헤더 설정
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! HomeHeaders
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 70)
    }
    
    // HomeTopInformationCell 설정
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: homeInformationCell1Id, for: indexPath) as! HomeInformationCell1
            return cell1
        } else if indexPath.item == 1 {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: homeInformationCell2Id, for: indexPath) as! HomeInformationCell2
            return cell2
        } else {
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: homeInformationCell3Id, for: indexPath) as! HomeInformationCell3
            return cell3
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 32, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 32, left: 0, bottom: 32, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 32
    }
}

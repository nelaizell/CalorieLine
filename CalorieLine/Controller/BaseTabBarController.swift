//
//  BaseTabBarController.swift
//  AppStoreJSONApi
//
//  Created by YBAP on 2019/10/20.
//  Copyright © 2019 YBAP. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavController(viewController: HomeController(), title: "홈", imageName: UIImage(systemName: "house")),
            createNavController(viewController: UIViewController(), title: "타임라인", imageName: UIImage(systemName: "timer")),
            createNavController(viewController: UIViewController(), title: "검색", imageName: UIImage(systemName: "magnifyingglass")),
        ]
    }
    
    //탭바 내에 내비게이션 컨트롤러 생성, 네비게이션 옵션 여기서 입력
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: UIImage!) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = imageName
        
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        return navController
    }
    
}

//
//  ViewController.swift
//  Notification_Center
//
//  Created by Jadië Oliveira on 24/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeView: HomeView?
    
    override func loadView() {
        homeView = HomeView()
        view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        homeView?.delegate(delegate: self)
    }
}

extension HomeViewController: HomeViewProtocol {
    func tappedEnterButton() {
        print("\(#function) -> eita ")
    }
}


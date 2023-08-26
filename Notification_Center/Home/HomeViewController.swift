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
        configNotification()
    }
    
    public func configNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(observeMac), name: Notification.Name("macbook"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(observeImac), name: NSNotification.Name("imac"), object: nil)
    }
    
    @objc func observeMac() {
        view.backgroundColor = .blue
        homeView?.logoImageView.image = UIImage(named: "macbook_pro")
        homeView?.titleLabel.text = "macbook pro"
    }
    
    @objc func observeImac() {
        view.backgroundColor = .magenta
        homeView?.logoImageView.image = UIImage(named: "Imac")
        homeView?.titleLabel.text = "Imac"
    }
}

extension HomeViewController: HomeViewProtocol {
    func tappedEnterButton() {
        print("\(#function) -> eita ")
        let selectVC = SelectionViewController()
//        selectVC.modalPresentationStyle = .fullScreen
        if let sheet = selectVC.sheetPresentationController {
            sheet.detents = [.medium()]
            sheet.preferredCornerRadius = 20
        }
        present(selectVC, animated: true)
    }
}


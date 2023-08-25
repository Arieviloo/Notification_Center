//
//  SelectionViewController.swift
//  Notification_Center
//
//  Created by Jadië Oliveira on 25/08/23.
//

import UIKit

class SelectionViewController: UIViewController {
    
    var selectionView: SelectionView?
    
    override func loadView() {
        selectionView = SelectionView()
        view = selectionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        selectionView?.delegate(delegate: self)
    }
}

extension SelectionViewController: SelectionViewProtocol {
    func tappedMacButton() {
        NotificationCenter.default.post(name: Notification.Name("macbook"), object: nil)
        dismiss(animated: true)
    }
    
    func tappedImacButton() {
        NotificationCenter.default.post(name: Notification.Name("imac"), object: nil)
        dismiss(animated: true)
    }
}

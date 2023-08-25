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
    }
}

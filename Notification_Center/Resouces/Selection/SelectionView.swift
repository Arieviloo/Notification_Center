//
//  SelectionView.swift
//  Notification_Center
//
//  Created by Jadië Oliveira on 25/08/23.
//

import UIKit

class SelectionView: UIView {
    
    lazy var titleLable: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Opções"
        $0.font = UIFont.systemFont(ofSize: 34)
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configView() {
        addSubview(titleLable)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLable.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}

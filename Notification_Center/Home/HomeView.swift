//
//  HomeView.swift
//  Notification_Center
//
//  Created by Jadië Oliveira on 24/08/23.
//

import UIKit

class HomeView: UIView {
    
    lazy var logoImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "logo_apple")?.withRenderingMode(.alwaysTemplate)
        $0.tintColor = .black
        return $0
    }(UIImageView())
    
    lazy var titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Text title"
        $0.font = UIFont.systemFont(ofSize: 28)
        $0.tintColor = .gray
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
        addSubview(logoImageView)
        addSubview(titleLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -80),
            
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
}

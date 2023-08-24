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
    
    lazy var enterButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Clique aqui", for: .normal)
        $0.tintColor = .black
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 8
        $0.layer.borderWidth = 2
        $0.layer.borderColor = UIColor(red: 207/255, green: 0/255, blue: 192/255, alpha: 1.0).cgColor
        return $0
        
    }(UIButton(type: .system))
    
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
        addSubview(enterButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -80),
            
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            enterButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40),
            enterButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            enterButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            enterButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }
    
}

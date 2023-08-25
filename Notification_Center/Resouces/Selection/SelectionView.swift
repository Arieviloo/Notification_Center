//
//  SelectionView.swift
//  Notification_Center
//
//  Created by Jadië Oliveira on 25/08/23.
//

import UIKit

protocol SelectionViewProtocol: NSObject {
    func tappedMacButton()
    func tappedImacButton()
}

class SelectionView: UIView {
    
    private var delegate: SelectionViewProtocol?
    public func delegate(delegate: SelectionViewProtocol) {
        self.delegate = delegate
    }
    
    lazy var titleLable: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Opções"
        $0.font = UIFont.systemFont(ofSize: 34)
        return $0
    }(UILabel())
    
    lazy var macButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setImage(UIImage(named: "Macbook"), for: . normal)
        $0.addTarget(self, action: #selector(tappedMacButton), for: .touchUpInside)
        return $0
    }(UIButton())
    
    lazy var imacButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setImage(UIImage(named: "imac_pro")?.withRenderingMode(.alwaysOriginal), for: .normal)
        $0.addTarget(self, action: #selector(tappedImacButton), for: .touchUpInside)
        
        return $0
    }(UIButton())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   @objc func tappedMacButton() {
       self.delegate?.tappedMacButton()
    }
    
    @objc func tappedImacButton() {
        self.delegate?.tappedImacButton()
    }
    
    private func configView() {
        addSubview(titleLable)
        addSubview(macButton)
        addSubview(imacButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLable.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            macButton.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 40),
            macButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            macButton.widthAnchor.constraint(equalToConstant: 200),
            macButton.heightAnchor.constraint(equalToConstant: 150),
            
            imacButton.topAnchor.constraint(equalTo: macButton.bottomAnchor, constant: 40),
            imacButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            imacButton.widthAnchor.constraint(equalToConstant: 200),
            imacButton.heightAnchor.constraint(equalToConstant: 150),
            
        ])
    }
}

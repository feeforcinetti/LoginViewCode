//
//  SportCollectionViewCellScreen.swift
//  LoginViewCode
//
//  Created by Felipe Forcinetti on 19/10/21.
//

import UIKit

class SportCollectionViewCellScreen: UIView {
    
    lazy var viewBackground: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubView()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubView() {
        self.addSubview(self.viewBackground)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
        //ViewBackground
            self.viewBackground.topAnchor.constraint(equalTo: self.topAnchor),
            self.viewBackground.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.viewBackground.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.viewBackground.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
}

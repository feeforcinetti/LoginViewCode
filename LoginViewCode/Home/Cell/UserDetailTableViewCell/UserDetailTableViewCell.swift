//
//  UserDetailTableViewCell.swift
//  LoginViewCode
//
//  Created by Felipe Forcinetti on 18/10/21.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    static let identifier: String = "UserDetailTableViewCell"
    
    lazy var userDetailView: UserDetailsView = {
        let view = UserDetailsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubView()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubView() {
        self.contentView.addSubview(self.userDetailView)
    }
    
    //Metodo para montar a celula
    public func setupCell(data: DataUser) {
        self.userDetailView.nameLabel.text = data.name
        self.userDetailView.userImageView.image = UIImage(named: data.nameImage)
    }
    
    func setupConstraints() {
//        self.userDetailView.snp.makeConstraints { make in
//            make.edges.equalToSuperview()
//        }
        NSLayoutConstraint.activate([
            //UserDetailView
            self.userDetailView.topAnchor.constraint(equalTo: self.topAnchor),
            self.userDetailView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.userDetailView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.userDetailView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    

}

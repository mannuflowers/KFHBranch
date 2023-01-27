//
//  collectionCell.swift
//  KFHBranch
//
//  Created by asmat manal on 25/01/23.
//

import UIKit

class collectionCell: UICollectionViewCell {
    
    static let identifier = "collectionCell"
    
    
    let mainHeadingLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor(red: 8/255, green: 148/255, blue: 77/255, alpha: 1)
        view.font = UIFont.boldSystemFont(ofSize: 22)
        view.textAlignment = .left
        return view
    }()
    
    let addressEnNameLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor.black
        view.font = UIFont.boldSystemFont(ofSize: 18)
        view.text = "Address:"
        view.textAlignment = .left
        return view
    }()
    
    let addressEnLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
        view.numberOfLines = 2
        view.textAlignment = .left
        return view
    }()
    
    let addressNameLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor.black
        view.text = "عنوان:"
        view.font = UIFont.boldSystemFont(ofSize: 18)
        view.textAlignment = .right
        return view
    }()
    
    let addressLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
        view.numberOfLines = 2
        view.textAlignment = .right
        return view
    }()
    
    let displayNameHeadingLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor.black
        view.textAlignment = .right
        view.font = UIFont.boldSystemFont(ofSize: 18)
        view.text = "اسم العرض:"
        return view
    }()
    
    let displayNameLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
        view.textAlignment = .right
        return view
    }()
    
    
    let displayNameEnHeadingLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor.black
        view.textAlignment = .left
        view.font = UIFont.boldSystemFont(ofSize: 18)
        view.text = "Display Name:"
        return view
    }()
    
    let displayNameEnLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
        view.textAlignment = .left
        return view
    }()
        
    let coordinatesNameLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor.black
        view.font = UIFont.boldSystemFont(ofSize: 18)
        view.text = "Coordinates:"
        view.textAlignment = .left
        return view
    }()
    
    let coordinatesLabel: UILabel = {
        var view = UILabel()
        view.backgroundColor = .white
        view.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
        view.textAlignment = .left
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 40
        layer.shadowOffset = CGSizeMake(0, 0)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.23
        layer.shadowRadius = 4
        
        contentView.addSubview(mainHeadingLabel)
        contentView.addSubview(addressLabel)
        contentView.addSubview(addressEnLabel)
        contentView.addSubview(coordinatesLabel)
        contentView.addSubview(addressNameLabel)
        contentView.addSubview(addressEnNameLabel)
        contentView.addSubview(displayNameLabel)
        contentView.addSubview(displayNameEnLabel)
        contentView.addSubview(displayNameHeadingLabel)
        contentView.addSubview(displayNameEnHeadingLabel)
        contentView.addSubview(coordinatesNameLabel)
        
        mainHeadingLabel.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 300, height: 30)
        addressEnNameLabel.anchor(top: mainHeadingLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 6, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 80, height: 25)
        addressEnLabel.anchor(top: addressEnNameLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 340, height: 50)
        addressNameLabel.anchor(top: addressEnLabel.bottomAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 50, height: 25)
        addressLabel.anchor(top: addressNameLabel.bottomAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 340, height: 50)
        displayNameEnHeadingLabel.anchor(top: addressLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 127, height: 25)
        displayNameEnLabel.anchor(top: addressLabel.bottomAnchor, left: displayNameEnHeadingLabel.rightAnchor, bottom: nil, right: nil, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 25)
        displayNameHeadingLabel.anchor(top: displayNameEnLabel.bottomAnchor, left: nil, bottom: nil, right: rightAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 8, width: 100, height: 25)
        displayNameLabel.anchor(top: displayNameEnLabel.bottomAnchor, left: nil, bottom: nil, right: displayNameHeadingLabel.leftAnchor, paddingTop: 5, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 150, height: 25)
        coordinatesNameLabel.anchor(top: displayNameLabel.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 8, paddingBottom: 0, paddingRight: 0, width: 110, height: 25)
        coordinatesLabel.anchor(top: displayNameLabel.bottomAnchor, left: coordinatesNameLabel.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 8, paddingBottom: 6, paddingRight: 0, width: 200, height: 25)
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented") //up
    }
}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,  paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
}



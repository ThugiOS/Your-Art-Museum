//
//  LoginTextField.swift
//  YourArtMuseum
//
//  Created by Никитин Артем on 30.12.22.
//

import UIKit

class LoginTextField: UIView {
    
    private let backgroundView: UIView = UIView(frame: .zero)
    private let textFieldEmail: UITextField = UITextField(frame: .zero)
    private let textFieldPassword: UITextField = UITextField(frame: .zero)

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView() {
        backgroundColor = .clear
        clipsToBounds = false

        backgroundView.backgroundColor = .white


        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(backgroundView)

        NSLayoutConstraint.activate([
            backgroundView.leftAnchor.constraint(equalTo: self.leftAnchor),
            backgroundView.rightAnchor.constraint(equalTo: self.rightAnchor),
            backgroundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])



        textFieldEmail.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textFieldEmail)

        NSLayoutConstraint.activate([
//            textField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20.0),
            textFieldEmail.topAnchor.constraint(equalTo: topAnchor, constant: 20.0),
            textFieldEmail.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20.0),
            textFieldEmail.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20.0)
        ])
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        backgroundView.layer.shadowColor = UIColor(named: "shadow-color",
                                                   in: Bundle(for: Self.self),
                                                   compatibleWith: nil)!.cgColor
    }

}

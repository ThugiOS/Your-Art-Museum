//
//  LoginTextField.swift
//  YourArtMuseum
//
//  Created by Никитин Артем on 3.01.23.
//

import UIKit

class LoginTextField: UIView {

    private let backgroundView: UIView = UIView(frame: .zero)
    private let textField: UITextField = UITextField(frame: .zero)

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
    


//
//    @IBInspectable
//    var placeholder: String {
//        get {
//            textField.placeholder ?? ""
//        }
//        set {
//            textField.attributedPlaceholder =
//            NSAttributedString(string: newValue,
//                               attributes: [
//                                .foregroundColor: UIColor(named: "secondary-label",
//                                                          in: Bundle(for: Self.self),
//                                                          compatibleWith: nil)!,
//                                .font: UIFont.systemFont(ofSize: 16.0),
//                               ])
//        }
//    }
//
//    @IBInspectable
//    var secureEntry: Bool {
//        get {
//            textField.isSecureTextEntry
//        }
//        set {
//            textField.isSecureTextEntry = newValue
//        }
//    }
//
//    var text: String {
//        textField.text ?? ""
//    }

    
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

        textField.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textField)

        NSLayoutConstraint.activate([
//            textField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20.0),
            textField.topAnchor.constraint(equalTo: topAnchor, constant: 20.0),
            textField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20.0),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20.0)
        ])
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        backgroundView.layer.shadowColor = UIColor(named: "shadow-color",
                                                   in: Bundle(for: Self.self),
                                                   compatibleWith: nil)!.cgColor
    }

}

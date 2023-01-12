//
//  ForgotPassword.swift
//  YourArtMuseum
//
//  Created by Никитин Артем on 12.01.23.
//

import UIKit

class ForgotPassword: UIButton {

    let button: UIButton = UIButton.init(frame: .zero)

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        config()
    }
    
    func config() {
        setTitle("Forgot your password?", for: .normal)
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 10)
        

        backgroundColor = .clear
        
        addTarget(self, action: #selector(tap), for: .touchUpInside)
    }

    @objc
    func tap() {
        print("Forgot your password?")
    }
}

import UIKit
//import SnapKit

@IBDesignable
class LoginField: UIView {
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
    
    @IBInspectable
    var placeholder: String {
        get {
            textField.placeholder ?? ""
        }
        set {
            textField.attributedPlaceholder =
            NSAttributedString(string: newValue,
                               attributes: [
                                .foregroundColor: UIColor(named: "placeholderColor",
                                                          in: Bundle(for: Self.self),
                                                          compatibleWith: nil)!,
                                .font: UIFont.systemFont(ofSize: 10.0),
                               ])
        }
    }
    
    @IBInspectable
    var secureEntry: Bool {
        get {
            textField.isSecureTextEntry
        }
        set {
            textField.isSecureTextEntry = newValue
        }
    }

    var text: String {
        textField.text ?? ""
    }

    var keyboardType: UIKeyboardType {
        get {
            textField.keyboardType
        }
        set {
            textField.keyboardType = newValue
        }
    }
    
    private func setupView() {
        backgroundColor = .clear
        clipsToBounds = false
        
        textField.textColor = UIColor(named: "placeholderColor")
        
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
            textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14.0),
            textField.topAnchor.constraint(equalTo: topAnchor, constant: 14.0),
            textField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -13.0),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14.0)
        ])
        
        let tapGesture = UITapGestureRecognizer.init(target: self,
                                                     action: #selector(fieldTapped(_:)))
        backgroundView.addGestureRecognizer(tapGesture)
        
        textField.delegate = self // extention
    }
    
    @objc
    func fieldTapped(_ sender: UITapGestureRecognizer) {
        textField.becomeFirstResponder() 
    }

    override var isFirstResponder: Bool {
        textField.isFirstResponder
    }
}


extension LoginField: UITextFieldDelegate {
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String
    ) -> Bool {
        return string.allSatisfy { !$0.isWhitespace }
    }
}

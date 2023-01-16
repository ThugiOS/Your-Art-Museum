import UIKit

class LoginButton: UIButton {

    private let logInButton: UIButton = UIButton.init(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor(named: "LogInColor")
        
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowRadius = 4.0
        self.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        self.layer.shadowOpacity = 1.0
        
        self.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    
    @objc
    func tap() {
        print("tap")
    }
}

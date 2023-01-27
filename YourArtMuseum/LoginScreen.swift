import UIKit

class LoginScreen: UIView {
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var adressLabel: UILabel!
    
    private let mainBackgroundImage = UIImageView(frame: .zero)

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
        mainLabel.text = "YOUR\nART\nMUSEUM"
        mainLabel.font = UIFont(name: "Montserrat-Regular", size: 34.0)
        
        adressLabel.text = "151 3rd St\nSan Francisco, CA 94103"
        adressLabel.font = UIFont(name: "Montserrat-Regular", size: 12.0)
        
        mainBackgroundImage.image = UIImage(named: "MainBackgroundImage")
        mainBackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        mainBackgroundImage.contentMode = .scaleAspectFill
                
        self.addSubview(mainBackgroundImage)

        NSLayoutConstraint.activate([
            mainBackgroundImage.topAnchor.constraint(equalTo: topAnchor, constant: -50.0),
            mainBackgroundImage.bottomAnchor.constraint(greaterThanOrEqualTo: bottomAnchor, constant: 50.0),
            mainBackgroundImage.rightAnchor.constraint(equalTo: rightAnchor, constant: 30.0),
        ])
    }
}


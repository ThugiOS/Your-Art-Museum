import UIKit

class LoginScreen: UIView {
    
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

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var userEmailAdress: LoginField!
    @IBOutlet var userPassword: LoginField!
    
    override func loadView() {
        super.loadView()

        // use only with keyboard
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillChangeFrame(_:)),
                                               name: UIResponder.keyboardWillChangeFrameNotification,
                                               object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // change type keyboard for email
        userEmailAdress.keyboardType = .emailAddress
//        scrollView.contentInsetAdjustmentBehavior = .never
    }
    
    @IBAction
    func backgroundTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(false)
    }
    
    @IBAction
    func logInTapped(_ sender: UIButton) {
        print(userEmailAdress.text)
        print(userPassword.text)
    }
    
    //MARK: adaptation of content after calling the keyboard
    @objc
    func keyboardWillChangeFrame(_ notification: NSNotification) {
        print("Keyboard is activated")
           
        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }

        scrollView.contentInset = UIEdgeInsets(top: 0.0,
                                               left: 0.0,
                                               bottom: scrollView.frame.maxY - keyboardFrame.minY,
                                               right: 0.0)

        let textFields = [userEmailAdress!, userPassword!]
        if let firstResponder = textFields
            .first(where: \.isFirstResponder) {
            
            let frame = firstResponder.frame.inset(by: UIEdgeInsets(top: -10,
                                                                    left: -10,
                                                                    bottom: -10,
                                                                    right: -10))
            
            let newOrigin = scrollView.convert(frame.origin, from: firstResponder.superview)
            let newFrame = CGRect.init(origin: newOrigin, size: frame.size)
            
            scrollView.scrollRectToVisible(newFrame, animated: true)
        }
    }
}


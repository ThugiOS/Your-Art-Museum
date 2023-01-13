import UIKit

class MainViewController: UIViewController {
    override func loadView() {
        super.loadView()

    }
    @IBAction
    func backgroundTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(false )
    }
}


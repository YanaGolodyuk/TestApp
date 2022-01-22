import UIKit

class PassDataSecondVC: UIViewController {

    var login: String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else { return }
        label.text = "Hello, \(login)"
    }
    
    @IBAction func goBackTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
}

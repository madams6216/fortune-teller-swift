import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var askView: UIImageView!
    
    @IBOutlet var askLabel: UIView!
    
    @IBOutlet weak var askButton: UIButton!
    
    @IBOutlet weak var askText: UITextField!
    
    @IBAction func pressedButton(sender: AnyObject) {
        print("button pressed")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
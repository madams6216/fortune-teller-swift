import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var askView: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
   
    @IBOutlet weak var askLabel: UILabel!
    
    @IBOutlet weak var askButton: UIButton!
    
    @IBOutlet weak var askTextField: UITextField!
    
    @IBAction func pressedButton(sender: AnyObject) {
        
        print("button pressed")
       
        askLabel.text = randomText()
        
        
            
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(2 * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue(), {
            self.askLabel.text = ""
        })
        
        
       askTextField.text = ""
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    func randomText() -> String {
        let words = ["Yes", "No", "The end is near","Absolutely", "Cannot predict now", "Prospect good", "Very doubtful", "Without a doubt", "Outlook not so good", "Don't count on it", "Cannot predict now", "Ask again later", "Signs point to yes", "No Doubt about it"]
        return words[Int(arc4random_uniform(UInt32(words.count)))]
    }
    
    
}
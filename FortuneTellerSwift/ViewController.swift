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
        
       askTextField.text = ""
        
        
    }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
        

        
    }
    
    
    func randomText() -> String {
        let words = ["Yes", "No", "The end is near","Absolutely", "Cannot predict now", "Prospect good", "Very doubtful", "Without a doubt", "Outlook not so good", "Don't count on it", "Cannot predict now"]
        return words[Int(arc4random_uniform(UInt32(words.count)))]
    }
}
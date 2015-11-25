// TODO:
// 1.) Show placeholder text in the question text field
// 2.) Enter key should dismiss keyboard and show answer

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var askView: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
   
    @IBOutlet weak var askLabel: UILabel!
    
    @IBOutlet weak var askButton: UIButton!
    
    @IBOutlet weak var askTextField: UITextField!
    
    @IBAction func pressedButton(sender: AnyObject) {
        
        // what do we want to do?
        // we want to ...
        // when a user taps the button, we want to check if the textbox is empty or not
        // and if it is empty, we want to show them a message
        
//        if textBoxIsEmpty {
//            showMessage
//        } else {
//            showAnswer
//        }
        
        print("button pressed")
        
        if (askTextField.text!.isEmpty) {
            let alert = UIAlertView()
            alert.title = "No Text"
            alert.message = "Please Enter Text In The Box"
            alert.addButtonWithTitle("Ok")
            alert.show()
        } else {
            askLabel.text = randomText()
            
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * Double(NSEC_PER_SEC)))
            dispatch_after(time, dispatch_get_main_queue(), {
                self.askLabel.text = ""
            })
            
            askTextField.text = ""
        }

    }
    
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true);
        return false;
        
        
        func textFieldDoneEditing(sender: UITextField) {
            sender.resignFirstResponder()}
    }
    
    
    
    
    func randomText() -> String {
        let words = ["Yes", "No", "The end is near","Absolutely", "Cannot predict now", "Prospect good", "Very doubtful", "Without a doubt", "Outlook not so good", "Don't count on it", "Cannot predict now", "Ask again later", "Signs point to yes", "No Doubt about it"]
        return words[Int(arc4random_uniform(UInt32(words.count)))]
        
        func textFieldShouldReturn(textField: UITextField!) -> Bool {
            self.view.endEditing(true);
            return false;
            
            
                    }
        

        
        
        
    }


    
    
        
    
    
}

     
//  importing UIKit
import UIKit

//  class defines SecondViewController class, inherited from UIViewController
class SecondViewController: UIViewController
{

//  code creates IBOutlets of two labels, yourAnswerLabel and myAnswer
    @IBOutlet weak var yourAnswerLabel: UILabel!
    @IBOutlet weak var myAnswer: UILabel!
    
//  myNumber1 and myNumber2 are optional Float variables, which are used to store the values entered by the user in the previous view controller
    var myNumber1: Float?
    var myNumber2: Float?
    
//  the viewDidLoad method is called when the view controller is loaded into memory
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//  code checks if myNumber1 and myNumber2 are valid numbers, then display their product else yourAnswerLabel is hidden, and myAnswer displays a message to enter valid numbers
        if let value1 = myNumber1, let value2 = myNumber2
        {
            let result = value1 * value2
            myAnswer.text = "\(result)"
        }
        else
        {
            yourAnswerLabel.isHidden=true
            myAnswer.text = "Enter A Valid Number"
        }
    }
}

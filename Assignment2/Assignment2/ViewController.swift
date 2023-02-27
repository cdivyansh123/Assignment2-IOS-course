//  importing UIKit
import UIKit

//  class that contains many methods and properties for creating user interfaces for iOS
class ViewController: UIViewController {
    
//  code creates IBOutlets for two text fields, firstNumber and secondNumber
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    
//  function is called when the view controller's view has been loaded into memory and is ready to be displayed on the screen.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     
//  function called multiplyAndSubmit is triggered when a user taps a button
    @IBAction func multiplyAndSubmit(_ sender: Any)
    {
        
//  retrieve the values entered by the user into two text fields called firstNumber and secondNumber
        let num1 = Float(firstNumber.text!)
        let num2 = Float(secondNumber.text!)

//  the code creates a SecondViewController instance and assigns num1 and num2 values to its myNumber1 and myNumber2 properties
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.myNumber1 = num1
        secondVC.myNumber2 = num2
        
//  the navigationController pushes SecondViewController onto the stack and displays it with an animation
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

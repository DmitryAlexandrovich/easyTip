

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var tipPercentageSlider: UISlider!

    @IBOutlet weak var tipPercentageLable: UILabel!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTipCalculatorValules()
        updateUI()
    }
    
    func setTipCalculatorValules() {
    tip.tipPercent = Double (tipPercentageSlider.value)
    tip.billAmount = ((textField.text)! as NSString).doubleValue
    tip.calculateTip()
    }
    
    func updateUI() {
        tipLabel.text = String (format: "$%0.2f", tip.tipAmount)
        totalLabel.text = String (format: "$%0.2f", tip.totalAmount) 
        tipPercentageLable.text = "Tip: \(Int(tipPercentageSlider.value * 100))%"
    }
    
    
    @IBAction func billAmountDidChanged(_ sender: Any) {
        setTipCalculatorValules()
        updateUI()
    }
    
    @IBAction func tipPercentageDidChange(_ sender: Any) {
        setTipCalculatorValules()
        updateUI()
        
    }

    
    
}

    
    
    

    

    
    
    
    
    
    
    
    
    



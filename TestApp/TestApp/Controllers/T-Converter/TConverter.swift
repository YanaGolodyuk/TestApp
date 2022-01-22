import UIKit
import SwiftUI

class TConverter: UIViewController {

    @IBOutlet weak var tempSlider: UISlider! {
        didSet{
            tempSlider.maximumValue = 100
            tempSlider.minimumValue = -100
            tempSlider.value = 0
            tempSlider.thumbTintColor = UIColor(named: "01")
        }
    }
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func temSliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)º C"
        
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)º F"
        
    }
    

}

import UIKit

class WeekdayFinder: UIViewController {
    
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultWeeldayLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func findDayBtn(_ sender: UIButton) {
    
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        
        guard let day = dateTF.text, !day.isEmpty,
              let month = monthTF.text, !month.isEmpty,
              let year = yearTF.text, !year.isEmpty else {
                  return resultWeeldayLbl.text = "Here you will see the day of the week"
              }
        
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        
        let weekday = dateFormatter.string(from: date)
        let capitalizedWeekday = weekday.capitalized
      
        resultWeeldayLbl.text = capitalizedWeekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}


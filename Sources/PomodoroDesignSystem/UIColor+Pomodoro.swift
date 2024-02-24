import UIKit

public extension UIColor {
    private convenience init?(colorNamed: String) {
        self.init(named: colorNamed, in: .module, compatibleWith: nil)
    }

    static let pomodoro = Pomodoro()

    final class Pomodoro: NSObject {
        override init() { super.init() }

        // Primary
        public let primary50 = UIColor(colorNamed: "primary50")!
        let primary100 = UIColor(colorNamed: "primary100")!
        let primary200 = UIColor(colorNamed: "primary200")!
        let primary300 = UIColor(colorNamed: "primary300")!
        let primary400 = UIColor(colorNamed: "primary400")!
        let primary500 = UIColor(colorNamed: "primary500")!
        let primary600 = UIColor(colorNamed: "primary600")!
        let primary700 = UIColor(colorNamed: "primary700")!
        let primary800 = UIColor(colorNamed: "primary800")!
        let primary900 = UIColor(colorNamed: "primary900")!

        // Surface
        let blackHigh = UIColor(colorNamed: "blackHigh")!
        let blackMedium = UIColor(colorNamed: "blackMedium")!
        let disabled = UIColor(colorNamed: "disabled")!
        let disabled2 = UIColor(colorNamed: "disabled2")!
        let searchBackground = UIColor(colorNamed: "searchBackground")!
        let surface = UIColor(colorNamed: "surface")!

        // Tag
        let tagBackground1 = UIColor(colorNamed: "tagBackground1")!
        let tagBackground2 = UIColor(colorNamed: "tagBackground2")!
        let tagBackground3 = UIColor(colorNamed: "tagBackground3")!
        let tagBackground4 = UIColor(colorNamed: "tagBackground4")!
        let tagBackground5 = UIColor(colorNamed: "tagBackground5")!
        let tagBackground6 = UIColor(colorNamed: "tagBackground6")!
        let tagBackground7 = UIColor(colorNamed: "tagBackground7")!

        let tagTypo1 = UIColor(colorNamed: "tagTypo1")!
        let tagTypo2 = UIColor(colorNamed: "tagTypo2")!
        let tagTypo3 = UIColor(colorNamed: "tagTypo3")!
        let tagTypo4 = UIColor(colorNamed: "tagTypo4")!
        let tagTypo5 = UIColor(colorNamed: "tagTypo5")!
        let tagTypo6 = UIColor(colorNamed: "tagTypo6")!
        let tagTypo7 = UIColor(colorNamed: "tagTypo7")!
    }
}

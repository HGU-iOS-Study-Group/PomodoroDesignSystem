import UIKit

public extension UIColor {
    private convenience init?(colorNamed: String) {
        self.init(named: colorNamed, in: .module, compatibleWith: nil)
    }

    static let pomodoro = Pomodoro()

    final class Pomodoro: NSObject {
        override init() { super.init() }
        
        public let background = UIColor(colorNamed: "background")!

        // Primary
        public let primary50 = UIColor(colorNamed: "primary50")!
        public let primary100 = UIColor(colorNamed: "primary100")!
        public let primary200 = UIColor(colorNamed: "primary200")!
        public let primary300 = UIColor(colorNamed: "primary300")!
        public let primary400 = UIColor(colorNamed: "primary400")!
        public let primary500 = UIColor(colorNamed: "primary500")!
        public let primary600 = UIColor(colorNamed: "primary600")!
        public let primary700 = UIColor(colorNamed: "primary700")!
        public let primary800 = UIColor(colorNamed: "primary800")!
        public let primary900 = UIColor(colorNamed: "primary900")!

        // Surface
        public let blackHigh = UIColor(colorNamed: "blackHigh")!
        public let blackMedium = UIColor(colorNamed: "blackMedium")!
        public let disabled = UIColor(colorNamed: "disabled")!
        public let disabled2 = UIColor(colorNamed: "disabled2")!
        public let searchBackground = UIColor(colorNamed: "searchBackground")!
        public let surface = UIColor(colorNamed: "surface")!

        // Tag
        public let tagBackground1 = UIColor(colorNamed: "tagBackground1")!
        public let tagBackground2 = UIColor(colorNamed: "tagBackground2")!
        public let tagBackground3 = UIColor(colorNamed: "tagBackground3")!
        public let tagBackground4 = UIColor(colorNamed: "tagBackground4")!
        public let tagBackground5 = UIColor(colorNamed: "tagBackground5")!
        public let tagBackground6 = UIColor(colorNamed: "tagBackground6")!
        public let tagBackground7 = UIColor(colorNamed: "tagBackground7")!

        public let tagTypo1 = UIColor(colorNamed: "tagTypo1")!
        public let tagTypo2 = UIColor(colorNamed: "tagTypo2")!
        public let tagTypo3 = UIColor(colorNamed: "tagTypo3")!
        public let tagTypo4 = UIColor(colorNamed: "tagTypo4")!
        public let tagTypo5 = UIColor(colorNamed: "tagTypo5")!
        public let tagTypo6 = UIColor(colorNamed: "tagTypo6")!
        public let tagTypo7 = UIColor(colorNamed: "tagTypo7")!
    }
}

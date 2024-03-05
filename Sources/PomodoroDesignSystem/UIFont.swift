//
//  UIFont.swift
//  Pomodoro
//
//  Created by 김하람 on 3/3/24.
//

import UIKit

public extension UIFont {
    static let pomodoroFont = PomodoroFont()
    
    final class PomodoroFont: NSObject {
        override init() { super.init() }
        
        // heading
        public func heading1(size fontSize: CGFloat = 80) -> UIFont {
            let familyName = "BMHANNA11yrsoldOTF"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }

        public func heading2(size fontSize: CGFloat = 54) -> UIFont {
            let familyName = "BMHANNA11yrsoldOTF"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }

        public func heading3(size fontSize: CGFloat = 28) -> UIFont {
            let familyName = "BMHANNA11yrsoldOTF"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }

        public func heading4(size fontSize: CGFloat = 20) -> UIFont {
            let familyName = "BMHANNA11yrsoldOTF"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }

        public func heading5(size fontSize: CGFloat = 18) -> UIFont {
            let familyName = "BMHANNA11yrsoldOTF"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }

        public func heading6(size fontSize: CGFloat = 16) -> UIFont {
            let familyName = "BMHANNA11yrsoldOTF"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }

        // paragraph and quote
        public func text1(size fontSize: CGFloat = 20) -> UIFont {
            let familyName = "BMHANNA11yrsoldOTF"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }

        public func text2(size fontSize: CGFloat = 18) -> UIFont {
            let familyName = "BMHANNA11yrsoldOTF"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }

        public func text3(size fontSize: CGFloat = 18) -> UIFont {
            let familyName = "Pretendard"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }

        public func text4(size fontSize: CGFloat = 16) -> UIFont {
            let familyName = "Pretendard"
            return UIFont(name: "\(familyName)", size: fontSize) ?? .systemFont(ofSize: fontSize)
        }
    }
}

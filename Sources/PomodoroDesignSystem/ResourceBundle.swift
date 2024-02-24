//
//  ResourceBundle.swift
//
//
//  Created by 김하람 on 2/24/24.
//

import Foundation

final class ResourceBundle {
    static func loadBundle() -> Bundle {
        let mainBundle: Bundle = Bundle.main
        
        if let path = Bundle(for: Self.self).path(forResource: "PomodoroDesignSystem", ofType: "bundle"),
           let bundle = Bundle(path: path) {
            return bundle
        }
        if let path = mainBundle.path(forResource: "PomodoroDesignSystem", ofType: "bundle"),
           let bundle = Bundle(path: path) {
            return bundle
        }
        
        assertionFailure("Cannot load bundle")
        
        return Bundle(for: Self.self)
    }
}

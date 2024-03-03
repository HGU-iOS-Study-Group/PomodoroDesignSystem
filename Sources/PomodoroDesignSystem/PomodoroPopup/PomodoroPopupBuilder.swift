//
//  PomodoroPopupBuilder.swift
//
//
//  Created by yeohun.jeon on 3/3/24.
//

import UIKit

public final class PomodoroPopupBuilder {
    private var title: String?
    private var body: String?
    private var buttonType: PomodoroPopupButtonType?

    public func add(title: String) -> Self {
        self.title = title
        return self
    }

    public func add(body: String) -> Self {
        self.body = body
        return self
    }

    public func add(button: PomodoroPopupButtonType) -> Self {
        self.buttonType = button
        return self
    }

    public func show(on viewController: UIViewController) {
        let popup = PomodoroPopupViewController()
        popup.configurePopup(title: title, body: body, button: buttonType)
        popup.modalPresentationStyle = .overCurrentContext
        popup.modalTransitionStyle = .crossDissolve

        viewController.present(popup, animated: true)
    }
}

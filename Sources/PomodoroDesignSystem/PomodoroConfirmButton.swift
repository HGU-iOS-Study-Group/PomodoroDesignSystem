//
//  PomodoroConfirmButton.swift
//
//
//  Created by 김하람 on 2/24/24.
//

import UIKit

public final class PomodoroConfirmButton: UIView {
    private let button = UIButton()
    private var didTapHandler: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    public var isEnabled: Bool = true {
        didSet {
            button.backgroundColor = isEnabled ? .pomodoro.blackHigh : .pomodoro.surface
        }
    }

    public convenience init(
        title: String,
        didTapHandler: @escaping () -> Void
    ) {
        self.init(frame: .zero)
        self.isUserInteractionEnabled = true
        button.titleLabel?.text = title
        button.setTitleColor(.pomodoro.surface, for: .normal)
        button.setTitleColor(.pomodoro.surface, for: .normal)
        button.backgroundColor = .pomodoro.blackHigh
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.layer.cornerRadius = 49.68
        self.didTapHandler = didTapHandler
    }

    @objc
    private func didTapButton() {
        didTapHandler?()
    }
}

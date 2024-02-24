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
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        button.layer.cornerRadius = button.frame.height / 2
    }

    public convenience init(
        title: String,
        didTapHandler: @escaping () -> Void
    ) {
        self.init(frame: .zero)
        self.isUserInteractionEnabled = true
        self.addSubview(button)
        button.setTitle(title, for: .normal)
        button.setTitle(title, for: .disabled)
        button.setTitleColor(.pomodoro.surface, for: .normal)
        button.setTitleColor(.pomodoro.surface, for: .disabled)
        button.backgroundColor = .pomodoro.blackHigh
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: self.topAnchor),
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        self.didTapHandler = didTapHandler
    }

    @objc
    private func didTapButton() {
        didTapHandler?()
    }
}

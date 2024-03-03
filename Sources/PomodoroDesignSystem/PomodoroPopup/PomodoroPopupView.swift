//
//  PomodoroPopupView.swift
//
//
//  Created by yeohun.jeon on 3/3/24.
//

import UIKit


public enum PomodoroPopupButtonType {
    case confirm(
        title: String,
        action: (() -> Void)?
    )
    case cancellable(
        cancelButtonTitle: String,
        confirmButtonTitle: String,
        cancelButtonAction: (() -> Void)?,
        confirmButtonAction: (() -> Void)?
    )
}

final class PomodoroPopupView: UIStackView {
    private let titleLabel = UILabel()
    private let bodyLabel = UILabel()
    private let leftButton = UIButton()
    private let rightButton = UIButton()
    private let buttonsStackView = UIStackView()

    private var leftButtonAction: (() -> Void)?
    private var rightButtonAction: (() -> Void)?
    private var dismissAction: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func updateComponents(
        title: String?,
        body: String?,
        button: PomodoroPopupButtonType?,
        dismissAction: (() -> Void)?
    ) {
        self.titleLabel.text = title
        self.bodyLabel.text = body
        self.dismissAction = dismissAction
        switch button {
        case .confirm(let title, let action):
            leftButton.setTitle(title, for: .normal)
            leftButtonAction = action
            rightButton.removeFromSuperview()
        case .cancellable(let cancelButtonTitle, let confirmButtonTitle, let cancelButtonAction, let confirmButtonAction):
            leftButton.setTitle(cancelButtonTitle, for: .normal)
            rightButton.setTitle(confirmButtonTitle, for: .normal)
            leftButtonAction = cancelButtonAction
            rightButtonAction = confirmButtonAction
        case nil:
            buttonsStackView.removeFromSuperview()
        }
    }

    @objc private func didTapLeftButton() {
        if let leftButtonAction {
            leftButtonAction()
        }
        dismissAction?()
    }

    @objc private func didTapRightButton() {
        if let rightButtonAction {
            rightButtonAction()
        }
        dismissAction?()
    }

    private func setupViews() {
        setupSubviews()
        setupContainerStackView()
        setupButtons()
        setupLabels()
    }

    private func setupContainerStackView() {
        addGestureRecognizer(UITapGestureRecognizer())
        backgroundColor = .pomodoro.background
        isLayoutMarginsRelativeArrangement = true
        directionalLayoutMargins = .init(top: 20, leading: 20, bottom: 20, trailing: 20)
        alignment = .center
        layer.cornerRadius = 24
        spacing = 30
        axis = .vertical
    }

    private func setupSubviews() {
        addArrangedSubview(titleLabel)
        addArrangedSubview(bodyLabel)
        addArrangedSubview(buttonsStackView)
        buttonsStackView.addArrangedSubview(leftButton)
        buttonsStackView.addArrangedSubview(rightButton)
    }

    private func setupButtons() {
        leftButton.layer.cornerRadius = 12.8
        leftButton.titleLabel?.font = .systemFont(ofSize: 20)
        leftButton.backgroundColor = .pomodoro.disabled2
        leftButton.setTitleColor(.pomodoro.surface, for: .normal)
        leftButton.addTarget(self, action: #selector(didTapLeftButton), for: .touchUpInside)

        rightButton.layer.cornerRadius = 12.8
        rightButton.titleLabel?.font = .systemFont(ofSize: 20)
        rightButton.backgroundColor = .pomodoro.primary900
        rightButton.setTitleColor(.pomodoro.surface, for: .normal)
        rightButton.addTarget(self, action: #selector(didTapRightButton), for: .touchUpInside)

        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonsStackView.spacing = 7
        buttonsStackView.heightAnchor.constraint(equalToConstant: 48).isActive = true
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        buttonsStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
    }

    private func setupLabels() {
        titleLabel.numberOfLines = .zero
        bodyLabel.numberOfLines = .zero
        titleLabel.font = .systemFont(ofSize: 20)
        bodyLabel.font = .systemFont(ofSize: 18)
    }
}

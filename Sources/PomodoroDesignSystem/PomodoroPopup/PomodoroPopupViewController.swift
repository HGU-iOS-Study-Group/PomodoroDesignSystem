//
//  PomodoroPopupViewController.swift
//
//
//  Created by yeohun.jeon on 3/3/24.
//

import UIKit

final class PomodoroPopupViewController: UIViewController {
    private let popupView = PomodoroPopupView()
    private let dimmedView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func configurePopup(
        title: String?,
        body: String?,
        button: PomodoroPopupButtonType?
    ) {
        popupView.updateComponents(
            title: title ?? "",
            body: body ?? "",
            button: button,
            dismissAction: { [weak self] in
                self?.dismiss(animated: true)
            }
        )
    }

    private func setupViews() {
        view.backgroundColor = .clear
        view.addSubview(dimmedView)

        dimmedView.translatesAutoresizingMaskIntoConstraints = false
        dimmedView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        dimmedView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        dimmedView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        dimmedView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        dimmedView.backgroundColor = UIColor.black.withAlphaComponent(0.2)

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapDimmedArea))
        dimmedView.addGestureRecognizer(tapGesture)

        dimmedView.addSubview(popupView)
        popupView.translatesAutoresizingMaskIntoConstraints = false
        popupView.centerXAnchor.constraint(equalTo: dimmedView.centerXAnchor).isActive = true
        popupView.centerYAnchor.constraint(equalTo: dimmedView.centerYAnchor).isActive = true
        popupView.leadingAnchor.constraint(equalTo: dimmedView.leadingAnchor, constant: 30).isActive = true
        popupView.trailingAnchor.constraint(equalTo: dimmedView.trailingAnchor, constant: -30).isActive = true
    }

    @objc func didTapDimmedArea() {
        self.dismiss(animated: true)
    }
}

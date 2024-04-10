//
//  UIView+Autolayout.swift
//  sendbirdTest
//
//  Created by drh on 10/04/2024.
//

import UIKit

public extension UIView {
    /// Adds the given view to the receiver as a subview and disables
    /// translation of autoresizing mask into constraints on the given view.
    ///
    /// - Parameter view: The view to be added as a subview of the receiver.
    func addAutoLayoutSubview(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }
    
    /// Pins the receiver to the given view at the specified edges.
    /// - Parameters:
    ///   - view: The view whose edges we wish to pin to.
    ///   - edges: The edges of the receiver to pin to the given view.
    func pin(to view: UIView, atEdges edges: NSDirectionalRectEdge = .all) {
        if edges.contains(.leading) {
            leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        }
        if edges.contains(.trailing) {
            trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        }
        if edges.contains(.top) {
            topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        }
        if edges.contains(.bottom) {
            bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }
    }
    
    /// Pins the receiver to the given view's layout margins at the specified
    /// edges.
    /// - Parameters:
    ///   - view: The view whose layout margins we wish to pin to.
    ///   - edges: The edges of the receiver to pin to the given view's layout
    ///   margins.
    func pinToLayoutMargins(of view: UIView, atEdges edges: NSDirectionalRectEdge = .all) {
        pin(toLayoutGuide: view.layoutMarginsGuide, atEdges: edges)
    }
    
    /// Pins the receiver to the given view's readable content guide at the
    /// specified edges.
    /// - Parameters:
    ///   - view: The view whose readable content guide we wish to pin to.
    ///   - edges: The edges of the receiver to pin to the given view's readable
    ///   content guide.
    func pinToReadableContentGuide(of view: UIView, atEdges edges: NSDirectionalRectEdge = .all) {
        pin(toLayoutGuide: view.readableContentGuide, atEdges: edges)
    }
    
    /// Pins the receiver to the given layout guide at the specified edges.
    /// - Parameters:
    ///   - layoutGuide: The layout guide to be pinned to.
    ///   - edges: The edges of the receiver to pin to the given layout guide.
    func pin(toLayoutGuide layoutGuide: UILayoutGuide, atEdges edges: NSDirectionalRectEdge) {
        if edges.contains(.leading) {
            leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor).isActive = true
        }
        if edges.contains(.trailing) {
            trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor).isActive = true
        }
        if edges.contains(.top) {
            topAnchor.constraint(equalTo: layoutGuide.topAnchor).isActive = true
        }
        if edges.contains(.bottom) {
            bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor).isActive = true
        }
    }
}

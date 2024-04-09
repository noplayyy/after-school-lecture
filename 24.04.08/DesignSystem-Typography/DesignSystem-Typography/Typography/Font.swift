//
//  Font.swift
//  DesignSystem-Typography
//
//  Created by Yeonju on 4/7/24.
//

import Foundation

internal enum ASFont: String {
    case regular
    case medium
    case bold

    var name: String {
        switch self {
        case .regular:
            return Inter.regular
        case .medium:
            return Inter.medium
        case .bold:
            return Inter.bold
        }
    }
}

struct Inter {
    static let regular = "Inter-Regular"
    static let medium = "Inter-Medium"
    static let bold = "Inter-Bold"
    
    static var all: [String] { [regular, medium, bold] }
}

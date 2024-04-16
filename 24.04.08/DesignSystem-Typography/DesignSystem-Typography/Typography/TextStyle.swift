//
//  TextStyle.swift
//  DesignSystem-Typography
//
//  Created by Yeonju on 4/7/24.
//

import Foundation
import SwiftUI

public enum TextStyle {
    // MARK: - Use Bold Weight
    case titleLarge
    case titleMedium
    case titleSmall
    
    case labelLarge
    case labelMedium
    case labelSmall
    
    // MARK: - Use Medium Weight
    case bodyLarge
    case bodyMedium
    case bodySmall
    
    // MARK: - Use Regular Weight
    case capitonLarge
    case captionMedium
    case captionSmall
    
    // MARK: - Use Meidum Weight
    case badge
}

internal extension TextStyle {
    private var fontDescription: FontDescription {
        switch self {
        case .titleLarge:
            return FontDescription(font: .bold, size: 48, lineHeight: 56, style: .title1)
        case .titleMedium:
            return FontDescription(font: .bold, size: 32, lineHeight: 36, style: .title2)
        case .titleSmall:
            return FontDescription(font: .bold, size: 24, lineHeight: 32, style: .title3)
        case .labelLarge:
            return FontDescription(font: .bold, size: 18, lineHeight: 24, style: .headline)
        case .labelMedium:
            return FontDescription(font: .bold, size: 16, lineHeight: 22, style: .subheadline)
        case .labelSmall:
            return FontDescription(font: .bold, size: 14, lineHeight: 20, style: .subheadline)
        case .bodyLarge:
            return FontDescription(font: .medium, size: 18, lineHeight: 24, style: .body)
        case .bodyMedium:
            return FontDescription(font: .medium, size: 16, lineHeight: 22, style: .footnote)
        case .bodySmall:
            return FontDescription(font: .medium, size: 14, lineHeight: 20, style: .footnote)
        case .capitonLarge:
            return FontDescription(font: .regular, size: 18, lineHeight: 20, style: .callout)
        case .captionMedium:
            return FontDescription(font: .regular, size: 16, lineHeight: 18, style: .caption1)
        case .captionSmall:
            return FontDescription(font: .regular, size: 14, lineHeight: 16, style: .caption2)
        case .badge:
            return FontDescription(font: .medium, size: 12, lineHeight: 14, style: .caption2)
        }
    }
}

internal extension TextStyle {
    // TODO: - font

    // TODO: - lineHeight
}

internal struct TextModifier: ViewModifier {
    let textStyle: TextStyle
    var isFixedSize: Bool = false
    
    func body(content: Content) -> some View {
        content
        // TODO: - Apply FixedSize or Dynamic Type Size Text Style

        // TODO: - Apply LineHeight
    }
}

public extension View {
    func textStyle(_ textStyle: TextStyle, isFixedSize: Bool = false) -> some View {
        self
            // TODO: - Apply TextModifier
    }
}

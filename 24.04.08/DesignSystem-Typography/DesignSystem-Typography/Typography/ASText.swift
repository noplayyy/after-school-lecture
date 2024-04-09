//
//  ASText.swift
//  DesignSystem-Typography
//
//  Created by Yeonju on 4/7/24.
//

import SwiftUI

public struct ASText: View {
    var text: String
    var textStyle: TextStyle
    var color: Color
    var isFixedSize: Bool
    
    public init(
        _ text: String,
        textStyle: TextStyle,
        color: Color = .black,
        isFixedSize: Bool = false
    ) {
        self.text = text
        self.textStyle = textStyle
        self.color = color
        self.isFixedSize = isFixedSize
    }
    
    public var body: some View {
        Text(LocalizedStringKey(text))
            .textStyle(
                textStyle,
                isFixedSize: isFixedSize
            )
            .foregroundColor(color)
    }
}

#Preview {
    VStack(alignment: .leading, spacing: 20) {
        VStack(alignment: .leading) {
            ASText(
                "Color Test",
                textStyle: .titleSmall,
                color: .blue
            )
            ASText(
                "Fixed Size Test",
                textStyle: .titleSmall,
                isFixedSize: true
            )
        }
        VStack(alignment: .leading) {
            ASText(
                "Title Large",
                textStyle: .titleLarge
            )
            ASText(
                "Title Medium",
                textStyle: .titleMedium
            )
            ASText(
                "Title Small",
                textStyle: .titleSmall
            )
        }
        VStack(alignment: .leading) {
            ASText(
                "Label Large",
                textStyle: .labelLarge
            )
            ASText(
                "Label Medium",
                textStyle: .labelMedium
            )
            ASText(
                "Label Small",
                textStyle: .labelSmall
            )
        }
        VStack(alignment: .leading) {
            ASText(
                "Body Large",
                textStyle: .bodyLarge
            )
            ASText(
                "Body Medium",
                textStyle: .bodyMedium
            )
            ASText(
                "Body Small",
                textStyle: .bodySmall
            )
        }
        VStack(alignment: .leading) {
            ASText(
                "Caption Large",
                textStyle: .capitonLarge
            )
            ASText(
                "Caption Medium",
                textStyle: .captionMedium
            )
            ASText(
                "Caption Small",
                textStyle: .captionSmall
            )
        }
        Group {
            ASText(
                "Badge",
                textStyle: .badge
            )
        }
    }
}

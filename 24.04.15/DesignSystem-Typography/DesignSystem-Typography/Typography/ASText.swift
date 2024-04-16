//
//  ASText.swift
//  DesignSystem-Typography
//
//  Created by Yeonju on 4/7/24.
//

import SwiftUI

// MARK: - Design System Typography가 적용 된 Text Component
public struct ASText: View {
    var text: String // 보여줄 String
    var textStyle: TextStyle // 지정할 TextStyle
    var color: Color // 지정할 Text Color
    var isFixedSize: Bool // 고정 사이즈 지정 여부
    
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
        Text(LocalizedStringKey(text)) // i18n 적용을 위한 LocalizedStringKey로 변환 -> 해당되는 string key가 없을 시 그대로 text 노출로 fallback 됨
            .textStyle(
                textStyle,
                isFixedSize: isFixedSize
            ) // Text Style 지정
            .foregroundColor(color) // Text Color 지정
    }
}

// MARK: - 사용 테스트를 위한 Preview
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

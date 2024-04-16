//
//  TextStyle.swift
//  DesignSystem-Typography
//
//  Created by Yeonju on 4/7/24.
//

import SwiftUI

// MARK: - Text Style 정의
public enum TextStyle {
    // bold weight
    case titleLarge
    case titleMedium
    case titleSmall
    
    case labelLarge
    case labelMedium
    case labelSmall
    
    // medium weight
    case bodyLarge
    case bodyMedium
    case bodySmall
    
    // regular weight
    case capitonLarge
    case captionMedium
    case captionSmall
    
    // meidum weight
    case badge
}

// MARK: - TextStyle 별 스타일 속성 값 정의
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

// MARK: - TextStyle 적용을 위한 속성 값 가져오기
internal extension TextStyle {
    // UIFont로 Stlye 별 지정된 Font 변환
    var font: UIFont {
        // font style 지정 값을 가져오고
        guard let font = UIFont(name: fontDescription.font.name, size: fontDescription.size) else {
            // 만약 가져오지 못할 경우 기본 폰트의 스타일 fallback 적용
            return UIFont.preferredFont(forTextStyle: fontDescription.style)
        }
        
        // 📌 - 사용자 디스플레이 설정에 맞게 textSize 로직을 입힌 값을 반환
        return UIFontMetrics.default.scaledFont(for: font)
    }
    
    // lineHeight 값 가져옴
    var lineHeight: CGFloat {
        return fontDescription.lineHeight
    }
}

// MARK: - TextStyle을 입히기 위한 Modifier 구현
internal struct TextModifier: ViewModifier {
    let textStyle: TextStyle // 지정할 TextStyle
    var isFixedSize: Bool = false // TextSize를 고정 값으로 지정할 지 여부
    
    func body(content: Content) -> some View {
        content
        // MARK: - 📌 고정 사이즈 분기 Font Style 지정
            .font(
                isFixedSize ? // 만약 고정 사이즈를 갖는다면?
                    .custom(textStyle.font.fontName, fixedSize: textStyle.font.pointSize) : // fixedSize 지정
                    .custom(textStyle.font.fontName, size: textStyle.font.pointSize) // 그렇지 않으면 size 지정
            )
        // MARK: - 📌 Line Height 구현
            .lineSpacing(textStyle.lineHeight - textStyle.font.lineHeight) // 2줄 이상일 경우 lineHeight 적용을 위한 줄과 줄 사이 간격 적용
            .padding( // 상하 여백 지정을 통해 lineHeight 값 지정
                .vertical,
                (textStyle.lineHeight - textStyle.font.lineHeight) / 2 // (지정해주고 싶은 LineHeight 값 - font가 기본으로 가지고 있는 본질적인 lineHeight의 크기 값) / 2
            )
    }
}

// MARK: - TextStyle Modifier 사용을 간편히 하기 위한 추상화 Extension
public extension View {
    func textStyle(_ textStyle: TextStyle, isFixedSize: Bool = false) -> some View {
        self
            .modifier(
                TextModifier(
                    textStyle: textStyle,
                    isFixedSize: isFixedSize
                )
            )
    }
}

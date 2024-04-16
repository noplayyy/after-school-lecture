//
//  FontDescription.swift
//  DesignSystem-Typography
//
//  Created by Yeonju on 4/7/24.
//

import UIKit

// MARK: - TextStyle 별 갖게 될 속성 값
struct FontDescription {
    let font: ASFont // 사용할 font
    let size: CGFloat // 지정할 size
    let lineHeight: CGFloat // 지정할 lineHeight
    let style: UIFont.TextStyle // font를 가져오지 못할 시 사용 될 default font style = fallback style
}

//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Yeonju on 3/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            // MARK: - Button의 Action 구성
            print("Clicked SwiftUI Button!")
        } label: {
            // MARK: - Button의 Label(UI) 구성
             Text("Hello SwiftUI!")
                .font(.largeTitle)
                .foregroundStyle(Color.white)
                .background(Color.orange)
        }
    }
}

#Preview {
    ContentView()
}

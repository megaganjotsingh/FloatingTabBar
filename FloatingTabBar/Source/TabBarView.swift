//
//  TabBarView.swift
//  VideoEditor
//
//  Created by apple on 30/07/23.
//

import SwiftUI

struct TabBarView: View {
    @State var selectedIndex = 1
    var body: some View {
        HStack {
            Spacer()
                .frame(width: 16)
            Button {
                selectedIndex = 0
            } label: {
                Image(systemName: "")
                    .buttonModifiers()
                    .opacity(selectedIndex == 0 ? 1 : 0.5)
            }
            .frame(width: 60)
            .buttonStyle(CustomButtonStyle())

            Button {
                selectedIndex = 1
            } label: {
                Image(systemName: "")
                    .opacity(selectedIndex == 1 ? 1 : 0.5)
                    .padding(16)
                    
            }
            .background(Color.white)
            .clipShape(Circle())
            .offset(y: -32)
            .frame(width: 60)
            .buttonStyle(CustomButtonStyle())
            
            Button {
                selectedIndex = 2
            } label: {
                Image(systemName: "")
                    .buttonModifiers()
                    .opacity(selectedIndex == 2 ? 1 : 0.5)
            }
            .frame(width: 60)
            .buttonStyle(CustomButtonStyle())

            Spacer()
                .frame(width: 16)
        }
        .frame(height: 72)
        .background(
            Color.white
                .clipShape(CustomCurveShape())
                //MARK: - SHADOW
                .shadow(color: Color.black.opacity(0.04), radius: 5, x: -5, y: -5)
                .ignoresSafeArea(.container, edges: .bottom)
                .cornerRadius(36)
        )
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

struct CustomButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) private var isEnabled
    
    func makeBody(configuration: Configuration) -> some View {
      // 1
      HStack {
        // 2
        configuration.label
      }
      .font(.body.bold())
      // 3
    }
}

fileprivate extension Image {
    @ViewBuilder
    func buttonModifiers() -> some View {
        self
            .resizable()
            .frame(width: 24, height: 24)
    }
}

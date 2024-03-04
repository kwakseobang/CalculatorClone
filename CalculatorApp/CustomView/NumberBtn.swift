//
//  NumberBtn.swift
//  CalculatorApp
//
//  Created by 곽서방 on 3/4/24.
//

import SwiftUI

//MARK: - 1
public struct NumberBtnViewModifier: ViewModifier {
    let action: () -> Void
    let color: Color
    let name: String?
    
    public init(color: Color = .gray, name: String? = "", action: @escaping () -> Void) {
        self.action = action
        self.color = color
        self.name = name
    }
    
    public func body(content: Content) -> some View {
        ZStack{
            content
            
            VStack{
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Button {
                        action()
                    } label: {
                        Text(self.name ?? "")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .frame(width: 80,height: 80)
                            .background(
                                Circle()
                                    .fill(self.color.opacity(1)) // opacity 투명도
                            )
                    }

                }
            }
            .padding(.trailing,20)
            .padding(.bottom,50)
        }
    }
}

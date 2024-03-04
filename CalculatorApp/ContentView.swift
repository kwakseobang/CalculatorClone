//
//  ContentView.swift
//  CalculatorApp
//
//  Created by 곽서방 on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("123,456")
                        .padding()
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                }
                HStack {
                    .modifier(NumberBtnViewModifier(color:.gray, name:"C", action: {
                        Text("")
                    }) as! View)
                    Text("^^")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("%")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("//")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.orange.opacity(1)) // opacity 투명도
                        )
                }
                HStack {
                    Text("7")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("8")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("9")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("X")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.orange.opacity(1)) // opacity 투명도
                        )
                }
                
                HStack {
                    Text("4")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("5")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("6")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("-")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.orange.opacity(1)) // opacity 투명도
                        )
                }
                
                HStack {
                    Text("1")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("2")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("3")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("+")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.orange.opacity(1)) // opacity 투명도
                        )
                }
                
                HStack {
                    Text("0")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("0")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text(".")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.gray.opacity(1)) // opacity 투명도
                        )
                    Text("=")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 80,height: 80)
                        .background(
                            Circle()
                                .fill(Color.orange.opacity(1)) // opacity 투명도
                        )
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

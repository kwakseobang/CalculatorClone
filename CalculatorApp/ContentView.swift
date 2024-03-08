//
//  ContentView.swift
//  CalculatorApp
//
//  Created by 곽서방 on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var totalNumber: String = "0"
    private var btnData: [[String]] = [
        ["C","%","//","$"],
        ["7","8","9","X"],
        ["4","5","6","-"],
        ["1","2","3","+"],
        ["0","0",".","="],
     ]
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()  // 배경 검은색으로
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(totalNumber)
                        .padding()
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                }
                ForEach(btnData, id: \.self) { line in
                    HStack {
                        ForEach(line, id: \.self) { item in
                            Button{
                                if totalNumber == "0"{
                                    totalNumber = "7"
                                }else {
                                    totalNumber += "7"
                                }
                            }label: {
                                Text("\(item)")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .frame(width: 80,height: 80)
                                    .background(
                                        Circle()
                                            .fill(Color.customNumBtn.opacity(1)) // opacity 투명도
                                    )
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

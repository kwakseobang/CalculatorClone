//
//  ContentView.swift
//  CalculatorApp
//
//  Created by 곽서방 on 3/4/24.
//

import SwiftUI

enum BtnType: String {
    case first, second, third, fourth, fifth, sixth, seventh, eighth, nineth, zero
    case dot, equal, plus, minus, multiple, devide
    case percent, opposite, clear
    
    var btnDisplayName: String {
        switch self {
        case .first :
            return "1"
        case .second :
            return "2"
        case .third :
            return "3"
        case .fourth :
            return "4"
        case .fifth :
            return "5"
        case .sixth :
            return "6"
        case .seventh :
            return "7"
        case .eighth :
            return "8"
        case .nineth :
            return "9"
        case .zero :
            return "0"
        case .dot :
            return "."
        case .equal :
            return "="
        case .plus :
            return "+"
        case .minus :
            return "-"
        case .multiple :
            return "X"
        case .devide :
            return "$"
        case .percent :
            return "%"
        case .opposite :
            return "/"
        case .clear :
            return "C"
        }
    }
    var backgroundColor: Color {
        switch self {
        case .first,.second,.third,.fourth,.fifth,.sixth,.seventh,.eighth,.nineth,.zero,.dot:
            return Color(.numberBtn)
        case .equal, .plus, .minus, .multiple, .devide:
            return Color(.orange)
        case .percent, .opposite, .clear:
            return Color(.gray)
        }
    }
    var foregroundColor: Color  {
        switch self {
        case .first,.second,.third,.fourth,.fifth,.sixth,.seventh,.eighth,.nineth,.zero,.dot,.equal, .plus, .minus, .multiple, .devide:
            return Color(.white)
        case .percent, .opposite, .clear:
            return Color(.black)
        }
    }
}
struct ContentView: View {
    @State private var totalNumber: String = "0"
    private var btnData: [[BtnType]] = [
        [.clear,.opposite,.percent,.devide],
        [.seventh,.eighth,.nineth,.multiple],
        [.fourth,.fifth,.sixth,.minus],
        [.first,.second,.third,.plus],
        [.zero,.zero,.dot,.equal],
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
                                Text("\(item.btnDisplayName)")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .frame(width: 80,height: 80)
                                    .background(
                                        Circle()
                                            .fill(item.backgroundColor.opacity(1)) // opacity 투명도
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

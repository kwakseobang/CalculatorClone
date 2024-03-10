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
            return "/"
        case .percent :
            return "%"
        case .opposite :
            return "+/-"
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
    @State var tempNumber: Int = 0
    @State var operatorType: BtnType = .clear
    
    private var btnData: [[BtnType]] = [
        [.clear,.opposite,.percent,.devide],
        [.seventh,.eighth,.nineth,.multiple],
        [.fourth,.fifth,.sixth,.minus],
        [.first,.second,.third,.plus],
        [.zero,.dot,.equal],
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
                        //자기 자신의 이름을 id로 부여?
                        ForEach(line, id: \.self) { item in
                            Button{
                                if totalNumber == "0"{
                                    if item == .clear {
                                        totalNumber = "0"
                                    } else if item == .plus || item == .minus || item == .devide || item == .multiple {
                                        totalNumber = "Error"
                                    } else {
                                        totalNumber =  item.btnDisplayName
                                
                                    }
                                } else {
                                    if item == .clear {
                                        totalNumber = "0"
                                    } else if item == .plus {
                                        //숫자를 저장
                                        tempNumber = Int(self.totalNumber) ?? 0
                                        //+
                                        operatorType = .plus
                                        totalNumber = "0"
                                        //남은 숫자 초기화
                                    }else if item == .multiple {
                                        //숫자를 저장
                                        tempNumber = Int(self.totalNumber) ?? 0
                                        //*
                                        operatorType = .multiple
                                        totalNumber = "0"
                                        //남은 숫자 초기화
                                    }else if item == .minus {
                                        //숫자를 저장
                                        tempNumber = Int(self.totalNumber) ?? 0
                                        //-
                                        operatorType = .minus
                                        totalNumber = "0"
                                        //남은 숫자 초기화
                                    }else if item == .equal {
                                        
                                        if operatorType == .plus {
                                            totalNumber = String((Int(self.totalNumber) ?? 0) + tempNumber)
                                        }else if operatorType == .multiple {
                                            totalNumber = String((Int(self.totalNumber) ?? 0) * tempNumber)
                                        }else if operatorType == .minus {
                                            totalNumber = String(tempNumber - (Int(self.totalNumber) ?? 0) )
                                        }
                                    } else {
                                        totalNumber +=  item.btnDisplayName
                                    }
                                    
                                }
                            }label: {
                                Text("\(item.btnDisplayName)")
                                    .font(.system(size: 30))
                                    .foregroundColor(item.foregroundColor)
                                    .frame(width:  calculateBtnWidth(btn: item) ,height: calculateBtnHeight(btn: item))
                                    .background(item.backgroundColor)
                                    .cornerRadius(40)
                                    .foregroundColor(.white)
                                    
                            }
                        }
                    }
                }
            }
        }
    }
    
    private func calculateBtnWidth(btn: BtnType) -> CGFloat  {
        //전체 너비 - 5*10) / 4
        switch btn {
        case .zero:
            return (UIScreen.main.bounds.width - 5*10) / 4 * 2
        default:
            return ((UIScreen.main.bounds.width - 5*10) / 4)
        }
    }
    private func calculateBtnHeight(btn: BtnType) -> CGFloat  {
        //전체 너비 - 5*10) / 4
            return (UIScreen.main.bounds.width - 5*10) / 4
        }
}

#Preview {
    ContentView()
}

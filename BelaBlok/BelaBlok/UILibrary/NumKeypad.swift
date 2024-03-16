//
//  NumKeypad.swift
//  BelaBlok
//
//  Created by DSebesic on 16.03.2024..
//

import SwiftUI

struct NumKeypad: View {
    let rows = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [0]
    ]
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(rows, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(row, id: \.self) { number in
                        if number != 0 {
                            Button(action: {
                                print("Tapped \(number)")
                            }) {
                                Text("\(number)")
                                    .font(.system(size: 30))
                                    .frame(width: UIScreen.main.bounds.size.width / 4, height: UIScreen.main.bounds.size.width / 4)
                                    .cornerRadius(25)
                            }
                            .buttonStyle(.plain)
                            .background(Color.blue)
                            .foregroundColor(.white)
                        } else {
                            Spacer()
                            Button(action: {
                                print("Tapped \(number)")
                            }) {
                                Text("\(number)")
                                    .font(.system(size: 30))
                                    .frame(width: UIScreen.main.bounds.size.width / 4, height: UIScreen.main.bounds.size.width / 4)
                                    .cornerRadius(205)
                            }
                            .buttonStyle(.plain)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            Button(action: {
                                print("Tapped \(number)")
                            }) {
                                Image(systemName: "chevron.left")
                                    .frame(width: UIScreen.main.bounds.size.width / 4, height: UIScreen.main.bounds.size.width / 4)
                                    .cornerRadius(25)
                            }
                            .buttonStyle(.plain)
                            .background(Color.blue)
                            .foregroundColor(.white)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    NumKeypad()
}

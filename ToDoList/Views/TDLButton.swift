//
//  TDLButton.swift
//  ToDoList
//
//  Created by Martin on 2023/06/08.
//

import SwiftUI

struct TDLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

struct TDLButton_Previews: PreviewProvider {
    static var previews: some View {
        TDLButton(title: "Value",
                  background: .purple) {
            // Action
        }
    }
}

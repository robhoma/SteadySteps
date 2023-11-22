//
//  InputView.swift
//  SteadySteps
//
//  Created by Robert Homa on 2023-11-18.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    var isSecure = false
    let placeholderText: String
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text(title)
                .foregroundColor(Color.black)
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecure {
                SecureField(placeholderText, text: $text)
                    .font(.system(size: 16))
            } else {
                TextField(placeholderText, text: $text)
                    .font(.system(size: 16))
            }
            Divider()
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Employee Email", placeholderText: "name@company.com")
    }
}


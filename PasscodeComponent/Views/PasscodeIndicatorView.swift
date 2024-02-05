//
//  PasscodeIndicatorView.swift
//  PasscodeComponent
//
//  Created by Yan Moroz on 06.02.2024.
//

import SwiftUI

struct PasscodeIndicatorView: View {
    
    @Binding var passcode: String
    
    var body: some View {
        HStack(spacing: 12) {
            ForEach(0..<4) { index in
                Circle()
                    .fill(passcode.count > index ? .primary : .quinary)
                    .frame(width: 20, height: 20)
                    .overlay {
                        Circle()
                            .stroke(.primary, lineWidth: 1.0)
                    }
            }
        }
    }
}

#Preview {
    VStack {
        PasscodeIndicatorView(passcode: .constant(""))
        PasscodeIndicatorView(passcode: .constant("12"))
    }
}

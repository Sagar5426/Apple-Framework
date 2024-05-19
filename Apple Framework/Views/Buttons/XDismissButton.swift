//
//  XDismissButton.swift
//  Apple Framework
//
//  Created by Sagar Jangra on 18/05/2024.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button(action: {
                isShowingDetailView = false
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}

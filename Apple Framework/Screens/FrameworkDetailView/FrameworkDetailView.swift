//
//  FrameWorkDetailView.swift
//  Apple Framework
//
//  Created by Sagar Jangra on 17/05/2024.
//

import SwiftUI

struct FrameWorkDetailView: View {
    
    var framework: Framework
    
    
    //Binding maked isShowingDetailView equal to what is in parentView i.e. in this case that is FrameworkgridView and there we are binding it with FrameworkGridViewModel's isShowingDetailView
    @Binding var isShowingDetailView : Bool
    
    @State private var  isShowingSafariView = false
    
    var body: some View {
        VStack{
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitleView(framework : framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button(action: {
                isShowingSafariView = true
            }, label: {
                AFButton(title: "Learn More")
            })
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: (URL(string: framework.urlString) ??
                             URL(string: "https://www.apple.com"))!)
        })
    }
}

#Preview {
    FrameWorkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}

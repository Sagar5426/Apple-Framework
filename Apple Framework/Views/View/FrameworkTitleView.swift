//
//  FrameworkTitleView.swift
//  Apple Framework
//
//  Created by Sagar Jangra on 18/05/2024.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework : Framework
    
    var body : some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2) /// .title2 is a dynamic type font that adjusts based on the user's device and available space
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6) ///maintain least 60% size while shrinking
            
        }
        .padding()
    }
    
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}

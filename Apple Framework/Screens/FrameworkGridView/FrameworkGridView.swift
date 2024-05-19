//
//  FrameworkGridView.swift
//  Apple Framework
//
//  Created by Sagar Jangra on 17/05/2024.
//

import SwiftUI

//main struct
struct FrameworkGridView: View {
    
    //diff b/w StateObject and Observed Object
    //State Object: when we initialize viewModel we use this
    //Observed Object: when we inject viewModel we use this, we have already initialized from previous one
    
    @StateObject var viewModel = FrameworkGridViewModel() //initialized so all view get destroyed and recreated but it will hold its default value
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameWorkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        
        
        }
    }
}


#Preview {
    FrameworkGridView()
}

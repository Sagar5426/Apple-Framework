//
//  FrameworkGridViewModel.swift
//  Apple Framework
//
//  Created by Sagar Jangra on 17/05/2024.
//

import SwiftUI

// ObservableObject : it broadcast itself that hey I changed and change the view accordingly
final class FrameworkGridViewModel : ObservableObject{
    
    //stateObject waiting for changes but in order to change we need to make them listen and for that we use @Published -> it broadcast the change
    @Published var isShowingDetailView = false
    
    var selectedFramework : Framework?{
        //if value of framework(i.e get selected) have any changes make true
        didSet{isShowingDetailView = true}
    }
    
    let columns: [GridItem] = [GridItem(.flexible()), // 3 columns
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}

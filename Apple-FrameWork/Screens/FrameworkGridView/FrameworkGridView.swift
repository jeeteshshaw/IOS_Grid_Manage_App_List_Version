//
//  FrameworkGridView.swift
//  Apple-FrameWork
//
//  Created by Jeetesh Shaw on 09/03/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(MockData.frameworks
                        //                    id: \.id //if we have id name there than it's optional to write this line (identidfier)
                ){ framework in
                    NavigationLink(
                        destination: FrameworkDetailsFile(
                        framework: framework,
                        isShowingDetailsView: $viewModel.isShowingDetailsView
                    )){
                        
                        FrameworkTitleView(framework:framework)
                        
                    }
                    
                        
                }
            }
            .navigationTitle("🍎 Frameworks")
//            .sheet(
//                isPresented: $viewModel.isShowingDetailsView){
//                    FrameworkDetailsFile(
//                        framework: viewModel.selectedFramework ?? MockData.sampleFramework,
//                        isShowingDetailsView: $viewModel.isShowingDetailsView
//                    )
//                }
            
        }
        .accentColor(Color(.label)) // this will show details back button white in dark mode and black in light mode
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}




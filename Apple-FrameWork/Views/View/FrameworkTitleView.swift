//
//  FrameworkTitleView.swift
//  Apple-FrameWork
//
//  Created by Jeetesh Shaw on 09/03/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    var size : Int = 50
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: CGFloat(size), height: CGFloat(size))
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding(.horizontal)
        }
       
    }
}


struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework, size: 50)
    }
}

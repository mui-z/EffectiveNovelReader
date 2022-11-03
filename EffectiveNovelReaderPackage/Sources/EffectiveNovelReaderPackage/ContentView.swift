//
//  SwiftUIView.swift
//  
//
//  Created by osushi on 2022/03/05.
//

import SwiftUI

public struct ContentView: View {
    public init() {}

    @StateObject
    var viewModel = ContentViewModel()
    
    public var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(viewModel.displayText)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 600)
            }
                .padding()
                .frame(width: geometry.size.width)
                .frame(minHeight: geometry.size.height)
        }
            .onTapGesture {
                viewModel.tapScreen()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

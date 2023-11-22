//
//  SplashscreenView.swift
//  SteadySteps
//
//  Created by Robert Homa on 2023-11-16.
//

import SwiftUI

struct SplashscreenView: View {
    
    @State var active: Bool = false
    
    var body: some View {
        
        ZStack {
            if self.active {
                LoginView()
            } else {
            Rectangle()
                .fill(Color.orange)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Image("steadysteps-loading-logo") // Logo
                .resizable()
                .scaledToFit()
                .frame(width:300, height: 300)
            Text("Version 1.0")
                .offset(y: UIScreen.main.bounds.height / 2.5) // Offset by screen size divided by constant
                .colorInvert()
                .font(.system(size: UIScreen.main.bounds.height / 30))
            }
            
        }
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    self.active = true
                }
            }
        }
    }
}

struct SplashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashscreenView()
    }
}

//
//  Subview.swift
//  onboardingdct app
//
//  Created by Don Dominic Mathew on 19/04/2021.
//

import SwiftUI

struct Subview: View {
    
    var imageString: String
    var body: some View {
        Image(imageString)
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .clipped()
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "Onboarding")
    }
}

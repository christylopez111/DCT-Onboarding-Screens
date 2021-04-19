//
//  OnboardingView.swift
//  onboardingdct app
//
//  Created by Don Dominic Mathew on 19/04/2021.
//

import SwiftUI

struct OnboardingView: View {
    var subview = [
        UIHostingController(rootView: Subview(imageString: "Onboarding")),
        
        UIHostingController(rootView: Subview(imageString: "Onboarding – 1")),
        UIHostingController(rootView: Subview(imageString: "Onboarding – 2")),
        UIHostingController(rootView: Subview(imageString: "Onboarding – 3"))
        ]
    var titles = ["Let's get started", "How to Check-in your guests", "How to scan Passport", "How to Scan Emirates ID Card"]
    var captions = ["Tap or swipe to start","You can check-in your guest by scanning Passport/Emirates ID card using Mobile camera","Point camera towards page with MRZ zone of passport and snap the iamge","Capture the image of Back side of Emirates ID card"]
    
    @State var currentPageIndex = 0
    var body: some View {
        
        VStack {
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subview)
                .frame(height: 600)
            Group{
                Text(titles[currentPageIndex])
                    .font(.title)
                Text(captions[currentPageIndex])
                    .font(.headline)
                    .foregroundColor(.orange)
                    .frame(width: 300, height:50, alignment: .leading)
                    .lineLimit(nil)
                }
            
            .padding()
            
            HStack{
                PageControl(numberOfpages: subview.count, currentPageIndex: $currentPageIndex)
                Spacer()
                Button(action: {
                    if self.currentPageIndex + 1 == self.subview.count {
                        self.currentPageIndex = 0
                } else {
                    self.currentPageIndex += 1
                    }
                }) {
                    ButtonContent()
                }
            }
            //Text("Currently shown page: \(currentPageIndex)")
            .padding()
            }
            
    }
}

struct ButtonContent: View {
    
    var body: some View{Image(systemName: "arrow.right")
        .resizable()
        .foregroundColor(.white)
        .frame(width: 30, height: 30)
        .padding()
        .background(Color.black)
        .cornerRadius(30)
        }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

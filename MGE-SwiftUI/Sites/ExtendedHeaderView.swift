//
// Created for MGE
// by  Stewart Lynch on 2023-05-28
// Using Swift 5.0
// Running on macOS 13.4
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct ExtendedHeaderView: View {
    var site: Site
    var body: some View {
        VStack {
            Image(site.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 100)
                .clipped()
            VStack {
                Text(site.name)
                    .font(.title)
                    .minimumScaleFactor(0.9)
                    .bold()
                    .lineLimit(1)
                    .layoutPriority(1)
                Text(site.tagLine).font(.title2).italic()
                Text(site.extended)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding()
        }
    }
}

struct ExtendedHeaderView_Previews: PreviewProvider {
    static var site: Site = Site.sample
    static var previews: some View {
        ExtendedHeaderView(site: site)
    }
}

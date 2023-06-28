//
// Created for MGE
// by  Stewart Lynch on 2023-05-29
// Using Swift 5.0
// Running on macOS 13.4
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import Foundation

class SiteViewModel: ObservableObject {
    @Published var site: Site = Site.sample
    
    @Published var selectedImage: String? = nil
    
    func selectImage(_ image: String) {
            selectedImage = image
    }
    
    func unselectImage() {
            self.selectedImage = nil
    }
}

class UserViewMode: ObservableObject {
    // Input
    @Published var username = ""
    @Published var password = ""
    @Published var passwordAgain = ""
    
    // Output
    @Published var isValid = false
}



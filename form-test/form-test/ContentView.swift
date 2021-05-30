struct ContentView: View {
  @ObservedObject private var userViewModel = UserViewModel()
  var body: some View {
    Form {
      Section {
        TextField("Username", text: $userViewModel.username)
          .autocapitalization(.none)
        }
        Section {
          SecureField("Password", text: $userViewModel.password)
          SecureField("Password again", text: $userViewModel.passwordAgain)
       }
       Section {
         Button(action: { }) {
           Text("Sign up")
         }.disabled(!userViewModel.valid)
       }
     }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

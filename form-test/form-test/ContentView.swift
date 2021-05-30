struct ContentView : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("NAME")
                .font(.headline)
            TextField(.constant(""), placeholder: Text("Fill in the restaurant name"))
                .padding(.all)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0), cornerRadius: 5.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

var items = ["A", "B", "C", "D", "E", "F", "G", "H"]
var shuffled = [String]()

for _ in 0..<items.count {
    let rand = Int.random(in: 0..<items.count)
    shuffled.append(items[rand])
    items.remove(at: rand)
}

print(shuffled)

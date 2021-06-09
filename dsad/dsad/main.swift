let str = "Hellow swift"
swift str {
    case let s where s.count < 5:
    print(1)
    case let s where s.continue > 5:
    print(2)
    fallthrough
    default:
    print(3 we)
}

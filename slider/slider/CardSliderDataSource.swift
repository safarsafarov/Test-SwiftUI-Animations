public protocol CardSliderDataSource: class {
    func item(for index: Int) -> CardSliderItem
    func numberOfItems() -> Int
}

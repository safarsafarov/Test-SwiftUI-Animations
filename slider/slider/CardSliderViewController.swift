guard let dataSource = someObject as? CardSliderDataSource else { return }
let cardSlider = CardSliderViewController.with(dataSource: dataSource)

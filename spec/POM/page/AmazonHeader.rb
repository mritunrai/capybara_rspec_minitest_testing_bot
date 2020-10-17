class AmazonHeaderPage
    def globalSearch(search)
        fill_in :twotabsearchtextbox, search
        click  'nav-search-submit-text'
    end

    def mobileSearch(search)
        click 'Mobiles'
    end

    def bestSellers(search)
        click 'Best Sellers'
    end
class Invoice_list_page < SitePrism::Page

    element :invoce_details_1, " div:nth-child(3) > div:nth-child(5) > a"
 
    def click_invoice_1()
    invoce_details_1.click
    end

end
Spree::HomeController.class_eval do
  layout false

  def index
    @featured_products = Spree::Product.taxons_name_eq("Featured").limit 3
  end
end


Spree::OrdersController.class_eval do
  before_filter :convert_option_types_to_variant

  protected

  # Since using dropdowns for options, need to figure out the variant at this point from options selected.
  def convert_option_types_to_variant
    if params[:option_types]
      option_values = params[:option_types].values
      # Get ID of Variant
      # Assuming only 2 options - grind & weight.
      variant_id = Spree::Variant.select("spree_variants.id").where(:product_id => params[:product_id]).where("EXISTS (SELECT * FROM spree_option_values_variants WHERE variant_id = spree_variants.id AND option_value_id = #{option_values[0]}) AND EXISTS (SELECT * FROM spree_option_values_variants WHERE variant_id = spree_variants.id AND option_value_id = #{option_values[1]})").first.try(:id)
      if variant_id
        params[:products] = {params[:product_id] => variant_id}
        # TODO: handle invalid combos?
      end
    end
  end
end


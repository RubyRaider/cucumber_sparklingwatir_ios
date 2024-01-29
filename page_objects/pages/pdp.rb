require_relative '../abstract/page'
class Pdp < Page

  # Actions

  def add_to_cart_text
    add_to_cart_button.wait_until(&:present?).text
  end

  private

  # Elements

  def add_to_cart_button
    app.element(accessibility_id: 'Add To Cart button')
  end
end

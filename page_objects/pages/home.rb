# frozen_string_literal: true

require_relative '../abstract/page'
class Home < Page

  # Actions

  def go_to_backpack_pdp
    app.tap on: backpack_image.wait_until(&:present?)
  end

  private

  # Elements

  def backpack_image
    app.element(predicate: 'label == "Sauce Labs Backpack"')
  end
end

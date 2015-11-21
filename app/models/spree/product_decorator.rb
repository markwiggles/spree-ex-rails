Spree::Product.class_eval do

	def self.default_scope
    self.order('name')
  end
end

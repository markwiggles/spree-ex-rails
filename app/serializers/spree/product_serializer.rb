module Spree
  class ProductSerializer < ActiveModel::Serializer
    embed :ids, include: true
    attributes :id, :name, :description, :price, :display_price, :slug
    has_many :product_properties, serializer: ProductPropertiesSerializer
    has_many :images, serializer: ImageSerializer
    has_many :variants_including_master, root: :variants, serializer: VariantSerializer


		def images
			object.images.order('id')
	  end

	end

end

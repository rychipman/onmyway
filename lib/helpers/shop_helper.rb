module ShopHelper

	def sale_items
		@items.select{|item| item[:for_sale] == true}
	end

	def for_sale_image_url(item, view)
		'/assets/images/' + item[:item_id] + '_' + view + '.jpg'
	end

	def for_sale_detail_url(item)
		'/shop/' + item[:item_id]
	end

end
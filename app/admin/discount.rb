# encoding: utf-8
ActiveAdmin.register Discount do

 menu :priority => 3
 config.batch_actions = false
 config.sort_order = 'position_asc'
 sortable

	index do
		sortable_handle_column
		column :position, :sortable => :position
		column :stand_slug
		column "Image" do |dc|
      image_tag dc.image, class: 'my_image_size'
    end
		default_actions
	end

	form do |f|
		f.inputs do 
		  f.input :image, :as => :file, :hint => f.object.image.present? \
		    ? image_tag(f.object.image.url(:thumb))
		    : f.template.content_tag(:span, "Изображение отсутствует")
  		f.input :stand_slug, as: :select,
        collection: Hash[Page.where(["slug != ? and slug != ? and slug != ?","index", "order", "design"]).map{|page| ["#{page.name}", page.slug]}] 
			end
		f.actions
	end
end


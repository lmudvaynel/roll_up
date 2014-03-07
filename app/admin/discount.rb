# encoding: utf-8
ActiveAdmin.register Discount do

 menu :priority => 3
 config.batch_actions = false

	index do
		column "Image" do |dc|
      image_tag dc.image
    end
		default_actions
	end

	form do |f|
		f.inputs do 
		  f.input :image, :as => :file, :hint => f.object.image.present? \
		    ? image_tag(f.object.image.url(:original))
		    : f.template.content_tag(:span, "Изображение отсутствует")
			end
		f.actions
	end
end


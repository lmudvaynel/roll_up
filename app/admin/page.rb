# encoding: utf-8
ActiveAdmin.register Page do
	menu :priority => 0  
	config.batch_actions = false
	config.sort_order = 'position_asc'

	sortable

  controller do
    def new
      @page = Page.new
      @page.build_seo   # без этой строки не появляется форма для seo параметров
    end

    def edit
      @page = Page.find(params[:id])
      if @page.seo_id.nil?
        @page.build_seo
      end
    end
  end
  
	index do
		sortable_handle_column
		column :position, :sortable => :position
		column :name
		column :slug
		default_actions
	end

	form do |f|
	  f.inputs "Наполнение" do
		 	f.input :name
		 	f.input :slug 
			f.input :content, as: :ckeditor 
		end 	 

		if f.object.slug != "index" and f.object.slug != "order"
			f.inputs "Стенд" do
				f.input :gallery_top_name
				f.has_many :gallery_tops do |p|
		      unless p.object.new_record?
		      	p.input :_destroy, :as => :boolean, :label => "Удалить изображение?", :required => false
		      end
				  p.input :image, :as => :file, :hint => p.object.image.present? \
		        ? image_tag(p.object.image.url(:thumb))
		        : p.template.content_tag(:span, "Изображение отсутствует")
		      p.input :alt
		      p.input :title
		    end
			end
			f.inputs do
		  	f.has_many :size_prices do |sp|
		  		unless sp.object.new_record?
		      	sp.input :_destroy, :as => :boolean, :label => "Удалить размеры?", :required => false
		      end
					sp.input :size
					sp.input :price
					sp.input :color
					sp.input :weight
			  end
		 	end
			f.inputs do
				f.input :gallery_bot_name
				f.has_many :gallery_bots do |p|
		      unless p.object.new_record?
		      	p.input :_destroy, :as => :boolean, :label => "Удалить изображение?", :required => false
		      end
				  p.input :image, :as => :file, :hint => p.object.image.present? \
		        ? image_tag(p.object.image.url(:thumb))
		        : p.template.content_tag(:span, "Изображение отсутствует")
		    	p.input :alt
		      p.input :title
		    end
			end
		end
	  
	  f.inputs "СЕО", :for => [:seo, f.object.seo || Seo.new] do |seo|
		  seo.input :title 
	  
		  seo.input :description
		  seo.input :keywords
		end
  	f.actions
	end
#form partial: 'form'
end

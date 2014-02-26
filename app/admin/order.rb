ActiveAdmin.register Order do
	menu :priority => 2
	actions :all, :except => [:new]

	index do
		column :name
		column :phone
		column :email
		column :company
		column :content
		default_actions
	end

end

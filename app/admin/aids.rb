ActiveAdmin.register Aid do
  config.sort_order = 'sn_asc'
  permit_params :sn, :name, :published, :description

  index do
    column :id
    column :sn
    column :published
    column :name
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
      f.input :sn  
      f.input :name
      f.input :published
      f.input :description, :as => :ckeditor, :label => false, :input_html => { :toolbar => 'Full' }
    end
    f.actions
  end

  show do
    attributes_table do
      row :sn
      row :name
      row :description do
        sanitize(aid.description)
      end
    end
  end
end
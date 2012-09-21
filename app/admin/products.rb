ActiveAdmin.register Product do
  
   index do
    column :id
    column :name
    
    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Details" do
    f.input :name
    f.input :description, :as => :ckeditor, :label => false, :input_html => { :toolbar => 'Full' }
  end
  f.buttons
 end
  
  show do
        attributes_table do
          row :name
          row :description do
            sanitize(product.description)
          end
        end
      end
  
end
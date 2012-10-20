ActiveAdmin.register SolutionSlide do
  config.sort_order = 'sn_asc'
  
       index do 
        column :sn
        column :id
        column :title
        column :note
        column :link
        column :logo

        default_actions
      end

      form :html => { :enctype => "multipart/form-data" } do |f|
        f.inputs "Details" do
        f.input :sn
        f.input :title
        f.input :note
        f.input :link, :label => "start with 'http://'"
        f.input :logo, :as => :file, :label => "940x339px picture"
      end
      f.buttons
     end

      show do
            attributes_table do
              row :sn
              row :title
              row :note
              row :link
              row :logo do
                image_tag(solution_slide.logo.url, :size => "470x170")
              end
            end
          end
  end


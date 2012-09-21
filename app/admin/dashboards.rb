ActiveAdmin::Dashboards.build do


  section "Recent Solutions" do
    table_for Solution.order("updated_at desc").limit(5) do
      column :name do |solution|
       link_to solution.name, [:admin, solution]
      end
      column :updated_at
    end
    strong { link_to "View All Solutions", admin_solutions_path }
  end
  
  section "Recent Products" do
    table_for Product.order("updated_at desc").limit(5) do
      column :name do |product|
       link_to product.name, [:admin, product]
      end
      column :updated_at
    end
    strong { link_to "View All Products", admin_products_path }
  end
  


end

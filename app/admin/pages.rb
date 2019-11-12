# frozen_string_literal: true

ActiveAdmin.register Page do
  permit_params :title, :body, :order, :is_published, :section_id, :menu_display
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :section_id, :body, :order, :is_published, :menu_display
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :section_id, :body, :order, :is_published, :menu_display]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    column :id
    column :title, sortable: :title
    column :section, sortable: :title
    actions
  end

  form do |f|
    f.inputs 'Details' do
      f.input :title, label: 'Title'
      f.input :section, label: 'Section'
      f.input :body, label: 'Body'
      f.actions
    end
  end
end

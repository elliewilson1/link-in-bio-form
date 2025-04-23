class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end
  def insert_item
    render({ :template => "item_templates/insert" })
  end
end

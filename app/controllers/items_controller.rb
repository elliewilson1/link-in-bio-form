class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end
  def insert_item
    render({ :template => "item_templates/insert" })
  end
  def new
    new_item = Item.new
    new_item.link_url = params.fetch("query_link_url")
    new_item.link_description = params.fetch("query_link_description")
    new_item.thumbnail_url = params.fetch("query_thumbnail_url")
    new_item.save
    redirect_to("/")
  end
end

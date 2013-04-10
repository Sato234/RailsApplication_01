# coding: utf-8

class TopPageController < ApplicationController
  @@static_int = 0
  
  def index
    @default_search_value = "検索文字列"
  end
end

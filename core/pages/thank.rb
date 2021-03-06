#!/bin/env ruby
# encoding: utf-8

require_relative "../page.rb"

class ThankPage
  
  include Page

  def initialize loc_text = nil
  
    @type = "thank"
    @text = loc_text[$lang] ? loc_text[$lang] : loc_text[:en]
    @is_increment = true

    @style = {}
    @style["p"] = "padding:40px; font-size:26px; line-height:36px"
    @style["h1"] = "font-weight: normal;text-transform: uppercase;display: block;text-align: center;font-size: 36px;margin-top: 120px;margin-bottom: 40px"

    @thanks = @text[0]
    @names = @text[1]

  end

  def content

    return "<h1>#{@thanks}</h1><p>#{@names}</p>"
    
  end
  
end
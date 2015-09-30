
require 'nokogiri'
require 'open-uri'

class Player < ActiveRecord::Base
	belongs_to :user
end

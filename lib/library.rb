require 'yaml'
require 'date'

class Library
    attr_accessor :list, :available  
    def initialize(attrs = {})
        @list = YAML.load_file('./lib/data.yml')
        @available = true
        
    end

    def incorrect_name? (name, actual_name)
        if（name == actual_name）
            return true
        else
            return false
    end
    

    def search_title (book)
        @list.select { |book| book[:item][:title].include? 'Pippi'  }
    end

    def set_unavailable (available)
        @list.detect { |book| book[:item][:title].include? title }
        if 
         @available == true
        then 
          @available == false
          book[:return_date] = Date.today.next_month

        end
    end
   
end
module LinkedIn
  class Position
    include ROXML
    xml_convention {|val| val.gsub("_","-") }
    xml_reader :id
    xml_reader :title
    xml_reader :summary
    xml_reader :start_year, :from => "start-date/year"
    xml_reader :start_month, :from => "start-date/month"
    xml_reader :company, :as => Company
  end
end

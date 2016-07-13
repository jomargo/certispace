class Template < ActiveRecord::Base
  belongs_to :certificate
  belongs_to :base_template
end

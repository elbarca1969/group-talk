class LengthWithWideCharValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    value = value.gsub(/\r\n/,"\n")
    count = 0 
    value.split(//).each do |v| 
      v.bytesize > 1 ? count += 2 : count += 1
    end 
    object.errors[attribute] << (options[:content] || "is too long (maximum is %d characters)" % options[:maximum]) if count > options[:maximum]
  end 
end
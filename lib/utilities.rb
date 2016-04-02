class Utilities
  class << self
    def remove_accent(source)
      return "" if !source.is_a?(String) && source.blank?
      source = source.downcase.strip
      popular_accent.each do |nonAcc, acc|
        source = source.gsub(acc, nonAcc)
      end
      source
    end

    def right_email(source)
      return false if !source.is_a?(String) && source.blank?
      source = source.downcase.strip
      if (email_regexp =~ source)
        source
      else
        false
      end
    end

    def popular_accent
      {
        'a'=>/[á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ|Á|À|Ả|Ã|Ạ|Ă|Ắ|Ặ|Ằ|Ẳ|Ẵ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ]/,
        'd'=>/[đ|Đ]/,
        'e'=>/[é|è|é|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ|É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ]/,
        'i'=>/[í|ì|ỉ|ĩ|ị|Í|Ì|Ỉ|Ĩ|Ị]/,
        'o'=>/[ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ|Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ]/,
        'u'=>/[ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự|Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự]/,
        'y'=>/[ý|ỳ|ỷ|ỹ|ỵ|Ý|Ỳ|Ỷ|Ỹ|Ỵ]/,
        '-'=>/\/|\?|–|\+|\#|\/|\&|\~|\`|\*|\(|\)|\=|\!|\,|\;|\@|\.|\"|\”/
      }
    end

    def email_regexp
      /\A[^@\s]+@([^@\s]+\.)+[^@\W]+\z/
    end
  end
end

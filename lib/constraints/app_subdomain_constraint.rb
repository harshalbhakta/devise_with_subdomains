class AppSubdomainConstraint
  def self.matches? request
    if request.subdomain.present? && request.subdomain != 'www'
      if App.find_by(subdomain: request.subdomain) != nil
        return true
      else
        return false
      end
    else
      return false
    end
  end
end
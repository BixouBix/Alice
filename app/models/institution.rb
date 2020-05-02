class Institution < ApplicationRecord
  class << self
    def search(params)
      search_by(params)
    end

    private
    def search_by(params)
      institutions = if params[:name]
        get_institutions('name', params)
      elsif params[:state]
        get_institutions('state', params)
      elsif params[:country]
        get_institutions('country', params)
      else
        Institution.all
      end
    end

    def get_institutions(st, params)
      Institution.where("lower(#{st}) LIKE ?", "%#{params[st.to_sym].downcase}%")
    end

  end
end

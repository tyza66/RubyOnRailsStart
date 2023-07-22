class Get1Controller < ActionController::Base
  def action1
    @user = "你好"
    Rails.logger.debug("user: #{@user}")
    render json: @user
  end

  def action2
    @events = "你好,世界！"
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @events.to_xml }
      format.json { render :json => @events.to_json }
      format.atom { @feed_title = "My event list" } # index.atom.builder
    end
  end

  protected

  def respond_to_access_control_request(request, headers)
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Content-Type'
    headers['Access-Control-Max-Age'] = '1728000'
    true
  end
end

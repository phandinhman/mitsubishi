class API::V1::CommentsAPI < Grape::API
  resources :comments do
    get do
      render_success 200, Settings.render_success, data: Comment.all
    end

    params do
      requires :content, type:String
    end
    post do
      begin
        comment = Comment.new declared(params).to_h
        comment.save
        render_success 200, Settings.render_success, data: comment
      rescue
        error!({status_code: status_code, content: e.message}, Settings.http_code.code_200)
      end
    end


    params do
      requires :id, type:Integer
    end
    delete ":id" do
      begin
        comment = Comment.find_by id: params[:id]
        comment.destroy
        render_success 200, Settings.render_success, data: "Delete Successfully"
      rescue
        error!({status_code: status_code, content: e.message}, Settings.http_code.code_200)
      end
    end

    params do
      requires ":id", type:Integer
      requires :content, type:String
    end
    patch ":id" do
      begin
        comment = Comment.find_by id: params[:id]
        comment.update_attributes params
        render_success 200, Settings.render_success, data: "Update Successfully"
      rescue
        error!({status_code: :bad_request, content: "error"}, Settings.http_code.code_200)
      end
    end

    params do
      requires :id, type:Integer
    end
    get ":id" do
      comment = Comment.find_by id: params[:id]
      if comment
        render_success 200, Settings.render_success, data: comment
      else
        render_success 422, Settings.render_success, data: comment
      end
    end
  end
end

class Articles::IndexSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers

    attributes :id, :title, :description, :content, :created_at
    belongs_to :user, serializer: Users::UserInfoForArticleIndexSerializer
    belongs_to :category, serializer: Categories::CategoryInfoForArticleIndexSerializer


    def image
        if Rails.env.test?
            rails_blob_url(object.image)
        else
            object & image&.service_url(expires_in: 1.minute, disposition: 'inline')
        end
    end
end
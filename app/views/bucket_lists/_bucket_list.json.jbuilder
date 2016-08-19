json.extract! bucket_list, :id, :name, :location, :mates, :timing, :comment, :image, :status, :created_at, :updated_at
json.url bucket_list_url(bucket_list, format: :json)
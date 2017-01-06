json.extract! job, :id, :user_id, :job_id, :create, :destroy, :created_at, :updated_at
json.url job_url(job, format: :json)
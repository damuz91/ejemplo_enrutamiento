json.extract! employee, :id, :store_id, :name, :created_at, :updated_at
json.url employee_url(employee, format: :json)

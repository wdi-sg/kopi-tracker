json.extract! kopi, :id, :name, :price, :roast_id, :origin_id, :created_at, :updated_at
json.url kopi_url(kopi, format: :json)
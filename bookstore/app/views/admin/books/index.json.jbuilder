json.array!(@books) do |book|
  json.extract! book, :id, :title, :description, :author_id, :category_id, :price
  json.url book_url(book, format: :json)
end

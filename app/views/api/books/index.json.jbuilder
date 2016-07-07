json.books @books do |book|
  json.id book.id
  json.title book.title
  json.url api_book_url(id: book.id)
  json.photo_url book.photo_url
  json.price number_to_currency(book.price)
  json.price_in_cents (book.price*100).to_i
  json.inventory book.inventory
  json.author do
    json.author_bio book.author.bio
    json.author_name book.author.last_name_first
  end
end

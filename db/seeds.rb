# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create(first_name: "Ryan", last_name: "Holiday", bio: "Ryan Holiday (born June 16, 1987) is an American author, marketer, and entrepreneur. He is a media strategist, the former Director of Marketing for American Apparel and a media columnist and editor-at-large for the New York Observer")

Author.create(first_name: "Walter", last_name: "Issacson", bio: "Walter Isaacson, the CEO of the Aspen Institute, has been chairman of CNN and the managing editor of Time magazine. He is the author of The Innovators: How a Group of Hackers, Geniuses, and Geeks Created the Digital Revolution; Steve Jobs; Einstein: His Life and Universe; Benjamin Franklin: An American Life; and Kissinger: A Biography, and the coauthor of The Wise Men: Six Friends and the World They Made. He lives in Washington, DC. Follow him on Twitter")



Author.create(first_name: "C.S.", last_name: "Lewis", bio: "Clive Staples Lewis (29 November 1898 – 22 November 1963) was a British novelist, poet, academic, medievalist, literary critic, essayist, lay theologian, broadcaster, lecturer, and Christian apologist. He held academic positions at both Oxford University (Magdalen College), 1925–54, and Cambridge University (Magdalene College), 1954–63. He is best known for his fictional work. Lewis and fellow novelist J. R. R. Tolkien were close friends.")


Author.create(first_name: "Dan", last_name: "Charnas", bio: "Dan Charnas is an American author, radio host and record company executive. He is considered to have played a role in the creation of hip-hop journalism. In 2010 he wrote the book The Big Payback about the history of the hip-hop business.")

Author.create(first_name: "Stephen C.", last_name: "Meyer", bio: "Stephen C. Meyer (born 1958) is an American geophysicist,[1] college professor,[2] writer, and advocate for intelligent design with a PhD from Cambridge University[1] in history and philosophy of science. Meyer was a professor of philosophy at Whitworth College[2] and is a Senior Fellow of the Discovery Institute (DI) and currently Director of its Center for Science and Culture (CSC).[3] at the DI.")


Book.create(title: "Growth Hacker Marketing", photo_url: 'http://buff.ly/290lhbl', price: '15', author_id: 1 )

Book.create(title: "Trust Me I'm Lying", photo_url: 'http://buff.ly/28Yf8HA', price: '15', author_id: 1 )


Book.create(title: "Benjamin Franklin: An American Life", photo_url: 'http://buff.ly/291Ntcb', price: '30', author_id: 2 )

Book.create(title: "Steve Jobs", photo_url: 'http://buff.ly/28YdZ2z', price: '40', author_id: 2)


Book.create(title: "Einstein: His Life and Universe", photo_url: 'http://buff.ly/28ZEuXO', price: '35', author_id: 2)


Book.create(title: "The Great Divorce", photo_url: 'http://buff.ly/298TTGc', price: '10', author_id: 3)

Book.create(title: "Screwtape Letters", photo_url: 'http://buff.ly/291Oxgv', price: '10', author_id: 3)

Book.create(title: "The Big Payback", photo_url: 'http://buff.ly/28YeMkd', price: '17', author_id: 4 )

Book.create(title: "Signature in the Cell: DNA and the Evidence for Intelligent Design", photo_url: 'http://buff.ly/291mIkq', price: '23', author_id: 5)

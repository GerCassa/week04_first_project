require_relative( "../models/gallery.rb" )
require_relative( "../models/artist.rb" )
require_relative("../models/exhibit.rb")

require("pry-byebug")



gallery1 = Gallery.new({
  "name" => "V&G Arts"
  })

gallery1.save()

artist1 = Artist.new({
  "first_name" => "Joan",
  "last_name" => "Miró",
  "style" => "Surrealism",
  "bio" => "20 April 1893 – 25 December 1983. Spanish painter, sculptor, and ceramicist born in Barcelona.",
  "gallery_id" => gallery1.id
})

artist1.save()

artist2 = Artist.new({
  "first_name" => "Salvador",
  "last_name" => "Dali",
  "style" => "Surrealism",
  "bio" => "11 May 1904 – 23 January 1989, known professionally as Salvador Dalí, was a prominent Spanish surrealist born in Figueres, Catalonia, Spain.",
  "gallery_id" => gallery1.id
})

artist3 = Artist.new({
  "first_name" => "Pablo",
  "last_name" => "Picasso",
  "style" => "Cubism",
  "bio" => "25 October 1881 – 8 April 1973 was a Spanish painter, sculptor, printmaker, ceramicist, stage designer, poet and playwright who spent most of his adult life in France. Regarded as one of the most influential artists of the 20th century, he is known for co-founding the Cubist movement, the invention of constructed sculpture, the co-invention of collage, and for the wide variety of styles that he helped develop and explore.",
  "gallery_id" => gallery1.id
})

artist4 = Artist.new({
  "first_name" => "Oscar-Claude",
  "last_name" => "Monet",
  "style" => "Impresionism",
  "bio" => "14 November 1840 – 5 December 1926, was a French painter, a founder of French Impressionist painting and the most consistent and prolific practitioner of the movement's philosophy of expressing one's perceptions before nature, especially as applied to plein air landscape painting. The term 'Impressionism' is derived from the title of his painting Impression, soleil levant (Impression, Sunrise), which was exhibited in 1874 in the first of the independent exhibitions mounted by Monet and his associates as an alternative to the Salon de Paris.",
  "gallery_id" => gallery1.id
})

artist5 = Artist.new({
  "first_name" => "Eugene",
  "last_name" => "Delacroix",
  "style" => "Romanticism",
  "bio" => "26 April 1798 – 13 August 1863, was a French Romantic artist regarded from the outset of his career as the leader of the French Romantic school. As a painter and muralist, Delacroix's use of expressive brushstrokes and his study of the optical effects of colour profoundly shaped the work of the Impressionists, while his passion for the exotic inspired the artists of the Symbolist movement. A fine lithographer, Delacroix illustrated various works of William Shakespeare, the Scottish author Walter Scott and the German author Johann Wolfgang von Goethe.",
  "gallery_id" => gallery1.id
})

artist6 = Artist.new({
  "first_name" => "Benito 'Quinquela'",
  "last_name" => "Martin",
  "style" => "Impresionism",
  "bio" => "March 1, 1890 – January 28, 1977 was an Argentine painter born in La Boca, Buenos Aires. Quinquela Martín is considered the port painter-par-excellence and one of the most popular Argentine painters. His paintings of port scenes show the activity, vigor and roughness of the daily life in the port of La Boca.",
  "gallery_id" => gallery1.id
})

artist7 = Artist.new({
  "first_name" => "Antonio",
  "last_name" => "Berni",
  "style" => "New Realism",
  "bio" => "14 May 1905 - Buenos Aires, 13 October 1981) was an Argentine figurative artist. He is associated with the movement known as Nuevo Realismo ('New Realism'), a Latin American extension of social realism. His work, including a series of Juanito Laguna collages depicting poverty and the effects of industrialization in Buenos Aires, has been exhibited around the world.",
  "gallery_id" => gallery1.id
  })

artist2.save()
artist3.save()
artist4.save()
artist5.save()
artist6.save()
artist7.save()

exhibit1 = Exhibit.new({
  "name" => "Nu au miroir",
  "year" => "1919",
  "medium" => "oil on canvas",
  "style" => "Surrealism",
  "image" => "https://upload.wikimedia.org/wikipedia/en/c/cf/Joan_Mir%C3%B3%2C_1919%2C_Nu_au_miroir_%28Nude_with_a_Mirror%29%2C_oil_on_canvas%2C_113_x_102_cm%2C_Kunstsammlung_Nordrhein-Westfalen.jpg",
  "artist_id" => artist1.id
})
exhibit1.save()

exhibit2 = Exhibit.new({
  "name" => "La Granja(The Farm)",
  "year" => "1922",
  "medium" => "Oil on canvas",
  "style" => "Surrealism",
  "image" => "https://cdn.shopify.com/s/files/1/0969/9128/products/La_Granja_The_Farm_4882e202-44de-46c4-8fea-7c9c3e472be1.jpg?v=1522127772",
  "artist_id" => artist1.id
})
exhibit2.save()

exhibit11 = Exhibit.new({
  "name" => "La Persistencia de la Memoria (The Persistence of Memory)",
  "year" => "1931",
  "medium" => "oil on canvas",
  "style" => "Surrealism",
  "image" => "https://3.bp.blogspot.com/-AixBRyPzTpo/VworUjCuvSI/AAAAAAAAAdg/5HGUliUYZ3YriRHw3VGaf3JdO3cr57AiQ/s1600/la-persistencia-de-la-memoria.jpg",
  "artist_id" => artist2.id
})
exhibit11.save()

exhibit3 = Exhibit.new({
  "name" => "The Great Masturbator",
  "year" => "1929",
  "medium" => "oil on canvas",
  "style" => "Surrealism",
  "image" => "http://1.bp.blogspot.com/-NuaACapb6KU/VqiuyVlo8aI/AAAAAAAAX4Q/IGYtcky_y50/s1600/dali.jpg",
  "artist_id" => artist2.id
})
exhibit3.save()

exhibit4 = Exhibit.new({
  "name" => "The Temptation of Saint Anthony",
  "year" => "1946",
  "medium" => "oil on canvas",
  "style" => "Surrealism",
  "image" => "http://2.bp.blogspot.com/-MUg26sL7UIU/UyxHsGfxr8I/AAAAAAAAZZ8/3sMvf1EY1pc/s1600/dali-salvador-the-temptation-of-st-anthony.jpg",
  "artist_id" => artist2.id
})
exhibit4.save()

exhibit5 = Exhibit.new({
  "name" => "The girl with mandolin",
  "year" => "1910",
  "medium" => "oil on canvas",
  "style" => "Cubism",
  "image" => "http://modernism-literature-movement.weebly.com/uploads/2/2/0/9/22095112/162373717.jpg",
  "artist_id" => artist3.id
})
exhibit5.save()

exhibit6 = Exhibit.new({
  "name" => "Guernica",
  "year" => "1937",
  "medium" => "oil on canvas",
  "style" => "Cubism, Surrealism",
  "image" => "https://thefemalegazers.files.wordpress.com/2017/02/guernica.jpg",
  "artist_id" => artist3.id
})
exhibit6.save()

exhibit7 = Exhibit.new({
  "name" => "Woman with a parasol",
  "year" => "1875",
  "medium" => "oil on canvas",
  "style" => "Impressionism",
  "image" => "https://c1.staticflickr.com/6/5476/11016055406_6f0ebf4f49_b.jpg",
  "artist_id" => artist4.id
})
exhibit7.save()

exhibit8 = Exhibit.new({
  "name" => "El Puerto y el trabajo",
  "year" => "1930",
  "medium" => "oil on canvas",
  "style" => "Impresionism",
  "image" => "https://uploads.agendaurbana.org/wp-content/uploads/2017/11/quinquela3.jpg",
  "artist_id" => artist6.id
})
exhibit8.save()

exhibit9 = Exhibit.new({
  "name" => "Manifestacion (Protest)",
  "year" => "1935",
  "medium" => "oil on canvas",
  "style" => "Realism",
  "image" => "https://c1.staticflickr.com/5/4553/38047882944_cf8e360780_b.jpg",
  "artist_id" => artist7.id
})
exhibit9.save()

exhibit10 = Exhibit.new({
  "name" => "La Liberté guidant le peuple (Liberty Leading the People)",
  "year" => "1930",
  "medium" => "oil on canvas",
  "style" => "Romanticism",
  "image" => "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Eug%C3%A8ne_Delacroix_-_Le_28_Juillet._La_Libert%C3%A9_guidant_le_peuple.jpg/1200px-Eug%C3%A8ne_Delacroix_-_Le_28_Juillet._La_Libert%C3%A9_guidant_le_peuple.jpg",
  "artist_id" => artist5.id
})
exhibit10.save()




binding.pry
nil

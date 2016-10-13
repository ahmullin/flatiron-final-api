User.create(username: "sophie", first_name: "Sophie", last_name: "Debenedetto", email: "sophie@gmail.com", password: "password")
User.create(username: "ali", first_name: "Ali", last_name: "Mullin", email: "ali@gmail.com", password: "password")
User.create(username: "logan", first_name: "Logan", last_name: "Gants", email: "logan@gmail.com", password: "password")
User.create(username: "francis", first_name: "Francis", last_name: "Rocco", email: "francis@gmail.com", password: "password")

book1 = Book.create(title: "Half-hours with the Highwaymen", author_id: rand(1..User.all.length), genre: "Biography", description: "Picturesque Biographies and Traditions of the 'Knights of the Road'", complete: true)

chapter1 = Chapter.create(title: "NEVISON: 'SWIFT NICKS'", author_id: rand(1..User.all.length), book_id: book1.id, description: "", approved: true)

Snippet.create(content: "When Harrison Ainsworth wrote Rookwood, that fantastic romance of highway robbery and the impossible exploits of the Rookwood family, he did a singular injustice to a most distinguished seventeenth-century highwayman, John Nevison by name, and transferred the glory of his wonderful ride to York to Dick Turpin, who never owned a 'Black Bess', and who never did anything of the kind. Turpin, by virtue of Ainsworth's glowing pages, has become a popular hero and stands full in the limelight, while the real gallant figure is only dimly seen in the cold shade of neglect.", chapter_id: chapter1.id, approved: true)

Snippet.create(content: "John or 'William' Nevison, by some accounts, was born at Pontefract, in 1639, of 'honest and reasonably-estated parents.' Sometimes we find him styled Nevison, at other times he is 'alias Clerk' in the proclamations issued, offering rewards for his arrest. Occasionally, in the chap-books, we find John Nevison and William Nevison treated as two separate and distinct persons, no [Pg 2] doubt because the recorded adventures of this truly eminent man were so widely distributed over the country, that it was difficult to believe them the doings of one person.", chapter_id: chapter1.id, approved: true)

Snippet.create(content: "But there seems to be no reasonable doubt that one and the same man was the hero of all these doings, as also of the famous Ride to York. Of course it is now by far too late to snatch from Turpin the false glory bestowed upon him. A hundred romances, a century of popular plays, have for ever in the popular mind identified him with the Ride to York, and with all manner of achievements and graces that were never his. Lies are brazen and immortal; truth is modest; and the Great Turpin Myth is too fully established to be thoroughly scotched.", chapter_id: chapter1.id, approved: true)

chapter2 = Chapter.create(title: "THOMAS RUMBOLD", author_id: rand(1..User.all.length), book_id: 1, description: "", approved: true)

Snippet.create(content: "Thomas Rumbold, born about 1643, at Ipswich, was the son of the usual 'poor but honest' parents, and was early apprenticed to a bricklayer in that town. But highly coloured stories of the wonders of London fired his imagination and set him to run away from home before little more than a quarter of his time had been served. He entered upon another kind of apprenticeship in London: nothing less than a voluntary pupilage with a thieves' fraternity; but very shortly left that also and set up for himself as a highwayman.", chapter_id: chapter2.id, approved: true)

book2 = Book.create(title: "The Murders in the Rue Morgue", author_id: rand(1..User.all.length), genre: "Detective Fiction", description: "From the Works of Edgar Allan Poe", complete: true)

chapter3 = Chapter.create(title: "Chapter 1", author_id: rand(1..User.all.length), book_id: book2.id, description: "", approved: true)

Snippet.create(content: "The mental features discoursed of as the analytical, are, in themselves, but little susceptible of analysis. We appreciate them only in their effects. We know of them, among other things, that they are always to their possessor, when inordinately possessed, a source of the liveliest enjoyment. As the strong man exults in his physical ability, delighting in such exercises as call his muscles into action, so glories the analyst in that moral activity which disentangles. He derives pleasure from even the most trivial occupations bringing his talent into play. He is fond of enigmas, of conundrums, of hieroglyphics; exhibiting in his solutions of each a degree of acumen which appears to the ordinary apprehension præternatural. His results, brought about by the very soul and essence of method, have, in truth, the whole air of intuition.", chapter_id: chapter3.id, approved: true)

Snippet.create(content: "The faculty of re-solution is possibly much invigorated by mathematical study, and especially by that highest branch of it which, unjustly, and merely on account of its retrograde operations, has been called, as if par excellence, analysis. Yet to calculate is not in itself to analyse. A chess-player, for example, does the one without effort at the other. It follows that the game of chess, in its effects upon mental character, is greatly misunderstood. I am not now writing a treatise, but simply prefacing a somewhat peculiar narrative by observations very much at random; I will, therefore, take occasion to assert that the higher powers of the reflective intellect are more decidedly and more usefully tasked by the unostentatious game of draughts than by all the elaborate frivolity of chess. In this latter, where the pieces have different and bizarre motions, with various and variable values, what is only complex is mistaken (a not unusual error) for what is profound. The attention is here called powerfully into play. If it flag for an instant, an oversight is committed resulting in injury or defeat. The possible moves being not only manifold but involute, the chances of such oversights are multiplied; and in nine cases out of ten it is the more concentrative rather than the more acute player who conquers. In draughts, on the contrary, where the moves are unique and have but little variation, the probabilities of inadvertence are diminished, and the mere attention being left comparatively unemployed, what advantages are obtained by either party are obtained by superior acumen. To be less abstract—Let us suppose a game of draughts where the pieces are reduced to four kings, and where, of course, no oversight is to be expected. It is obvious that here the victory can be decided (the players being at all equal) only by some recherché movement, the result of some strong exertion of the intellect. Deprived of ordinary resources, the analyst throws himself into the spirit of his opponent, identifies himself therewith, and not unfrequently sees thus, at a glance, the sole methods (sometime indeed absurdly simple ones) by which he may seduce into error or hurry into miscalculation.", chapter_id: chapter3.id, approved: true)

Snippet.create(content: "Whist has long been noted for its influence upon what is termed the calculating power; and men of the highest order of intellect have been known to take an apparently unaccountable delight in it, while eschewing chess as frivolous. Beyond doubt there is nothing of a similar nature so greatly tasking the faculty of analysis. The best chess-player in Christendom may be little more than the best player of chess; but proficiency in whist implies capacity for success in all those more important undertakings where mind struggles with mind. When I say proficiency, I mean that perfection in the game which includes a comprehension of all the sources whence legitimate advantage may be derived. These are not only manifold but multiform, and lie frequently among recesses of thought altogether inaccessible to the ordinary understanding. To observe attentively is to remember distinctly; and, so far, the concentrative chess-player will do very well at whist; while the rules of Hoyle (themselves based upon the mere mechanism of the game) are sufficiently and generally comprehensible. Thus to have a retentive memory, and to proceed by “the book,” are points commonly regarded as the sum total of good playing. But it is in matters beyond the limits of mere rule that the skill of the analyst is evinced.", chapter_id: chapter3.id, approved: true)



# 15.times do
# 	Book.create(title: Faker::Book.title, author_id: rand(1..User.all.length), genre: Faker::Book.genre, description: Faker::Hipster.sentence, complete: false)
# end
#
# 5.times do
# 	Book.create(title: Faker::Book.title, author_id: rand(1..User.all.length), genre: Faker::Book.genre, description: Faker::Hipster.sentence, complete: true)
# end
#
#
# 30.times do
# 	Chapter.create(title: "Chapter " + Faker::Hipster.word, author_id: rand(1..User.all.length), book_id: rand(1..Book.all.length), description: Faker::Hipster.sentence, approved: true)
# end
#
# 30.times do
# 	Chapter.create(title: "Chapter " + Faker::Hipster.word, author_id: rand(1..User.all.length), book_id: rand(1..Book.all.length), description: Faker::Hipster.sentence, approved: false)
# end

# 60.times do
#   UserChapter.create(user_id: rand(1..User.all.length), chapter_id: rand(1..Chapter.all.length), vote_choice: rand(-1..1))
# end

# 90.times do
# 	Snippet.create(content: Faker::Hipster.paragraph, chapter_id: rand(1..Chapter.all.length), approved: true)
# end
#
# 90.times do
# 	Snippet.create(content: Faker::Hipster.paragraph, chapter_id: rand(1..Chapter.all.length), approved: false)
# end

# 120.times do
# 	UserSnippet.create(user_id: rand(1..User.all.length), snippet_id: rand(1..Snippet.all.length), vote_choice: rand(-1..1))
# end

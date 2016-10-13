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


book3 = Book.create(title: "The Adventures of Tom Sawyer", author_id: rand(1..User.all.length), genre: "Fiction", description: "An 1876 novel about a young boy growing up along the Mississippi River.", complete: true)

chapter4 = Chapter.create(title: "Chapter I", author_id: rand(1..User.all.length), book_id: book3.id, description: "", approved: true)


Snippet.create(content: "'TOM!' No answer.'TOM!' No answer.
'What’s gone with that boy, I wonder? 'You TOM!' No answer. The old lady pulled her spectacles down and looked over them about the room; then she put them up and looked out under them. She seldom or never looked through them for so small a thing as a boy; they were her state pair, the pride of her heart, and were built for 'style,' not service—she could have seen through a pair of stove-lids just as well. She looked perplexed for a moment, and then said, not fiercely, but still loud enough for the furniture to hear: 'Well, I lay if I get hold of you I’ll—' She did not finish, for by this time she was bending down and punching under the bed with the broom, and so she needed breath to punctuate the punches with. She resurrected nothing but the cat. 'I never did see the beat of that boy!' She went to the open door and stood in it and looked out among the tomato vines and 'jimpson' weeds that constituted the garden. No Tom. So she lifted up her voice at an angle calculated for distance and shouted:
'Y-o-u-u TOM!'", chapter_id: chapter4.id, approved: true)

Snippet.create(content: "SATURDAY morning was come, and all the summer world was bright and fresh, and brimming with life. There was a song in every heart; and if the heart was young the music issued at the lips. There was cheer in every face and a spring in every step. The locust-trees were in bloom and the fragrance of the blossoms filled the air. Cardiff Hill, beyond the village and above it, was green with vegetation and it lay just far enough away to seem a Delectable Land, dreamy, reposeful, and inviting. Tom appeared on the sidewalk with a bucket of whitewash and a long-handled brush. He surveyed the fence, and all gladness left him and a deep melancholy settled down upon his spirit. Thirty yards of board fence nine feet high. Life to him seemed hollow, and existence but a burden. Sighing, he dipped his brush and passed it along the topmost plank; repeated the operation; did it again; compared the insignificant whitewashed streak with the far-reaching continent of unwhitewashed fence, and sat down on a tree-box discouraged. Jim came skipping out at the gate with a tin pail, and singing Buffalo Gals. Bringing water from the town pump had always been hateful work in Tom’s eyes, before, but now it did not strike him so. He remembered that there was company at the pump. White, mulatto, and negro boys and girls were always there waiting their turns, resting, trading playthings, quarrelling, fighting, skylarking. And he remembered that although the pump was only a hundred and fifty yards off, Jim never got back with a bucket of water under an hour—and even then somebody generally had to go after him.", chapter_id: chapter4.id, approved: true)

chapter5 = Chapter.create(title: "Chapter II", author_id: rand(1..User.all.length), book_id: book3.id, description: "", approved: true)

Snippet.create(content: "TOM presented himself before Aunt Polly, who was sitting by an open window in a pleasant rearward apartment, which was bedroom, breakfast-room, dining-room, and library, combined. The balmy summer air, the restful quiet, the odor of the flowers, and the drowsing murmur of the bees had had their effect, and she was nodding over her knitting—for she had no company but the cat, and it was asleep in her lap. Her spectacles were propped up on her gray head for safety. She had thought that of course Tom had deserted long ago, and she wondered at seeing him place himself in her power again in this intrepid way. He said: 'Mayn’t I go and play now, aunt?'
'What, a’ready? How much have you done?”
'It’s all done, aunt.'
'Tom, don’t lie to me—I can’t bear it.'
'I ain’t, aunt; it is all done.'
Aunt Polly placed small trust in such evidence. She went out to see for herself; and she would have been content to find twenty per cent. of Tom’s statement true. When she found the entire fence white-washed, and not only whitewashed but elaborately coated and recoated, and even a streak added to the ground, her astonishment was almost unspeakable. She said:
'Well, I never! There’s no getting round it, you can work when you’re a mind to, Tom.' And then she diluted the compliment by adding, 'But it’s powerful seldom you’re a mind to, I’m bound to say. Well, go ‘long and play; but mind you get back some time in a week, or I’ll tan you.'
She was so overcome by the splendor of his achievement that she took him into the closet and selected a choice apple and delivered it to him, along with an improving lecture upon the added value and flavor a treat took to itself when it came without sin through virtuous effort. And while she closed with a happy Scriptural flourish, he 'hooked' a doughnut.", chapter_id: chapter5.id, approved: true)



book4 = Book.create(title: "Steve and the Steve Engine", author_id: rand(1..User.all.length), genre: "Children's Fiction", description: "A 1921 work for young adults", complete: true)

chapter6 = Chapter.create(title: "Chapter I", author_id: rand(1..User.all.length), book_id: book4.id, description: "", approved: true)

Snippet.create(content: "Steve Tolman had done a wrong thing and he knew it.
While his father, mother, and sister Doris had been absent in New York for a week-end visit and Havens, the chauffeur, was ill at the hospital, the boy had taken the big six-cylinder car from the garage without anybody's permission and carried a crowd of his friends to Torrington to a football game. And that was not the worst of it, either. At the foot of the long hill leading into the village the mighty leviathan so unceremoniously borrowed had come to a halt, refusing to move another inch, and Stephen now sat helplessly in it, awaiting the aid his comrades had promised to send back from the town.
What an ignominious climax to what had promised to be a royal holiday! Steve scowled with chagrin and disappointment.
The catastrophe served him right. Unquestionably he should not have taken the car without asking. He had never run it all by himself before, although many times he had driven it when either his father or Havens had been at his elbow. It had gone all right then. What reason had he to suppose a mishap would befall him when they were not by? It was infernally hard luck!
Goodness only knew what was the matter with the thing. Probably something was smashed, something that might require days or even weeks to repair, and would cost a lot of money. Here was a pretty dilemma!
How angry his father would be!
The family were going to use the automobile Saturday to take Doris back to Northampton for the opening of college and had planned to make quite a holiday of the trip. Now it would all have to be given up and everybody would blame him for the disappointment. A wretched hole he was in!
The boys had not given him much sympathy, either. They had been ready enough to egg him on into wrong-doing and had made of the adventure the jolliest lark imaginable; but the moment fun had been transformed into calamity they had deserted him with incredible speed, climbing out of the spacious tonneau and trooping jauntily off on foot to see the town. It was easy enough for them to wash their hands of the affair and leave him to the solitude of the roadside; the automobile was not theirs and when they got home they would not be confronted by irate parents.
How persuasively, reflected Stephen, they had urged him on.
'Oh, be a sport, Steve!' Jack Curtis had coaxed. 'Who's going to be the wiser if you do take the car? Anyhow, you have run it before, haven't you? I don't believe your father will mind.'

'Take a chance, Stevie,' his chum, Bud Taylor, pleaded. 'What's the good of being such a boob? Do you think if my father had a car and it was standing idle in the garage when a bunch of kids needed it to go to a school game I would hesitate? You bet I wouldn't!'

'It isn't likely your Dad would balk at your using the car if he knew the circumstances,' piped another boy. 'We have got that match to play off, and now that the electric cars are held up by the strike how are we to get to Torrington? Don't be a ninny, Steve.'

Thus they had ridiculed, cajoled, and wheedled Steve until his conscience had been overpowered and, yielding to their arguments, he had set forth for the adjoining village with the triumphant throng of tempters. At first all had gone well. The fourteen miles had slipped past with such smoothness and rapidity that Stephen, proudly enthroned at the wheel, had almost forgotten that any shadow rested on the hilarity of the day. He had been dubbed a good fellow, a true sport, a benefactor to the school—every complimentary pseudonym imaginable—and had glowed with pleasure beneath the avalanche of flattery. As the big car with its rollicking occupants had spun along the highway, many a passer-by had caught the merry mood of the cheering group and waved a smiling salutation in response to their shouts.

In the meanwhile, exhilarated by the novelty of the escapade, Steve had increased the speed until the red car fairly shot over the level macadam, its blurred outlines lost in the scarlet of the autumn foliage. Then suddenly when the last half-mile was reached and Torrington village, the goal of the pilgrimage, was in sight, quite without warning the panting monster had stopped and all attempts to urge it farther were of no avail. There it stood, its motionless engine sending out odors of hot varnish and little shimmering waves of heat.

Immediately a hush had descended upon the boisterous company. There was a momentary pause, followed by a clamor of advice. When, however, it became evident that there was no prospect of restoring the disabled machine to action, one after another of the frightened schoolboys had dropped out over the sides of the car and after loitering an instant or two with a sort of shamefaced indecision, at the suggestion of Bud Taylor they had all set out for the town.

'Tough luck, old chap!' Bud had called over his shoulder. 'Mighty tough luck! Wish we had time to wait and see what's queered the thing; but the game is called at two-thirty, you know, and we have only about time to make it. We'll try and hunt up a garage and send somebody back to help you. So long!'

And away they had trooped without so much as a backward glance, leaving Stephen alone on the country road, worried, mortified, and resentful. There was no excuse for their heartless conduct, he fumed indignantly. They were not all on the eleven. Five of the team had come over in Tim Barclay's Ford, so that several of the fellows Steve had brought were merely to be spectators of the game. At least Bud Taylor, his especial crony, was not playing. He might have remained behind. How selfish people were, and what a fleeting thing was popularity! Why, half an hour ago he had been the idol of the crowd! Then Bud had shouted: 'Come ahead, kids, let's hoof it to Torrington!' and in the twinkling of an eye the tide had turned, the mob had shifted its allegiance and gone tagging off at the heels of a new leader. They did not mean to have their pleasure spoiled, not they!

Scornfully Stephen watched them mount the hill, their crimson sweaters making a zigzag line of color in the sunshine; even their laughter, care-free as if nothing had happened, floated back to him on the still air, demonstrating how little concern they felt for him and his refractory automobile. Well might they proceed light-heartedly to the village, spend their money on sodas and ice-cream cones, and shout themselves hoarse at the game. No thought of future punishment marred their enjoyment and the program was precisely the one he had outlined for himself before Fate had intervened and raised a prohibitory hand.", chapter_id: chapter6.id, approved: true)

oceanBook = Book.create(title: "The Ocean and its Wonders", author_id: rand(1..User.all.length), genre: "Children's Fiction", description: "What the Ocean has to Say—Its Whispers—Its Thunders—Its Secrets.", complete: false)

oceanChap1 = Chapter.create(title: "Chapter One", author_id: rand(1..User.all.length), book_id: oceanBook.id, description: "", approved: true)

oceanChap2 = Chapter.create(title: "Chapter I", author_id: rand(1..User.all.length), book_id: oceanBook.id, description: "", approved: false)

oceanSnip1 = Snippet.create(content: "There is a voice in the waters of the great sea. It calls to man continually. Sometimes it thunders in the tempest, when the waves leap high and strong and the wild winds shriek and roar, as if to force our attention. Sometimes it whispers in the calm, and comes rippling on the shingly beach in a still, small voice, as if to solicit our regard. But whether that voice of ocean comes in crashing billows or in gentle murmurs, it has but one tale to tell,—it speaks of the love, and power, and majesty of Him who rides upon the storm, and rules the wave.", chapter_id: oceanChap1.id, approved: true)

oceanSnip2 = Snippet.create(content: "Yes, the voice of ocean tells but one tale; yet there are many chapters in that wonderful story. The sea has much to say; far more than could possibly be comprehended in one volume, however large. It tells us of the doings of man on its broad bosom, from the day in which he first ventured to paddle along shore in the hollow trunk of a tree, to the day when he launched his great iron ship of 20,000 tons, and rushed out to sea, against wind and tide, under an impulse equal to the united strength of 11,500 horses. No small portion of the ocean’s tale this, comprising many chapters of deeds of daring, blood, villainy, heroism, and enterprise. But with this portion of its story we have nothing to do just now. It tells us, also, of God’s myriad and multiform creatures, that dwell in its depths, from the vast whale, whose speed is so great, that it might, if it chose, circle round the world in a few days, to the languid zoophyte, which clings to the rock, and bears more resemblance to a plant than to a living animal.", chapter_id: oceanChap1.id, approved: true)

oceanSnip3 = Snippet.create(content: "Before proceeding to the consideration of the wonders connected with and contained in the sea, we shall treat of the composition of the sea itself and of its extent, depth, and bottom.

What is the sea made of? Salt water, is the ready reply that rises naturally to every lip. But to this we add the question,—What is salt water? or, as there are many kinds of salt water, of what sort of salt water does the sea consist? To these queries we give the following reply, which, we doubt not, will rather surprise some of our readers.", chapter_id: oceanChap2.id, approved: false)



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

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Topic.delete_all
Comment.delete_all
Subforum.delete_all

User.create username: 'Admin', password: 'alkaseltzer'
User.create username: 'Michael', password: 'michael'
User.create username: 'WSFan', password: 'michael'


Subforum.create title: 'On The Field'
Subforum.create title: 'Trade Rumors, Prospect Talk, Etc.'
Subforum.create title: 'White Sox History'
Subforum.create title: 'Other Teams'
Subforum.create title: 'Off Topic'


Topic.create subforum_id: 1, title: 'Tonights game', user: 'Michael', content: 'Why on earth did we start Noesi tonight?'
Comment.create topic_id: 1, user:'WSFan', post_number: 1, content: 'He is terrible'

Topic.create subforum_id: 1, title: 'Tyler Flowers', user: 'Michael', content: 'He is terrible'
Comment.create topic_id: 2, user:'WSFan', post_number: 1, content: 'So is Soto'
Comment.create topic_id: 2, user:'Michael', post_number: 2, content: 'This team needs a new catcher'

Topic.create subforum_id: 2, title: 'Micah Johnson performing well in AAA', user: 'Michael', content: 'He will be a solid 2nd baseman someday'
Comment.create topic_id: 3, user:'WSFan', post_number: 1, content: 'He needs a bit more time to develop his defense'

Topic.create subforum_id: 3, title: 'Who was the best White Sox player of all time?', user: 'Michael', content: 'Was it Frank Thomas?'
Comment.create topic_id: 4, user:'WSFan', post_number: 1, content: 'It was Eddie Collins'

Topic.create subforum_id: 4, title: 'Bryce Harper', user: 'Michael', content: 'Is pretty good at this baseball thing.'
Comment.create topic_id: 5, user:'WSFan', post_number: 1, content: 'You dont say'

Topic.create subforum_id: 5, title: 'Giordanos or Lou Malnatis?', user: 'Michael', content: 'I say Giordanos'
Comment.create topic_id: 6, user:'WSFan', post_number: 1, content: 'Lou Malnatis'

Tag.create title: 'happy'
Tag.create title: 'sad'
Tag.create title: 'mad'

Connector.create topic_id: 1, tag_id: 2
Connector.create topic_id: 2, tag_id: 3
Connector.create topic_id: 6, tag_id: 1
Connector.create topic_id: 1, tag_id: 3
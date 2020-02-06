# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Traveller.create!(
   email: 'test@test',
   password: '111111',
   name: 'test',
   trip_count: '0',
   entry_status: 'true'
)

Spot.create!(
   genre: '観光地',
   spot_name: 'ヘルシンキ大聖堂',
   spot_text: 'ヘルシンキの小高い丘の上に建つ、白亜の大聖堂。大階段に腰を下ろし、夏の日差しをいっぱいに浴びながら街を見下ろすと、「バルト海の乙女」と称される美しい街並が見えます。どうしても見たかった、ここからの景色。南にはエテラ港があり、オレンジ色のテントが並ぶマーケット広場（Kauppatori）が広がっていて、旬のブルーベリーやラズベリー、果物や野菜、キノコや海の幸、トナカイの角のアクセサリーや白樺のこぶで作られたククサなどが並び、にぎやかな人であふれています。',
   image: '',
   cost: '4',
   business_hours: '月曜～土曜10：00-17:00、日曜11:00-15:00',
   stay_time: '約30分',
   position: '',
   access: 'ヘルシンキ中央駅から東方向に徒歩約5分～10分',
   public_status: '公開',
   traveller_id: 1
)
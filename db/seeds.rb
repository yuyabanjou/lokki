# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Traveller.create!(
	[
		{
			email: 'test@test',
			password: '111111',
			name: 'test',
			trip_count: '0',
			entry_status: 'true'
		},
		{
			email: 'test1@test1',
			password: '111111',
			name: 'test1',
			trip_count: '5',
			entry_status: 'true'
		},
		{
			email: 'tanaka@tanaka',
			password: '111111',
			name: 'tanaka',
			trip_count: '12',
			entry_status: 'true'
		},
		{
			email: 'miyagawa@miyagawa',
			password: '111111',
			name: 'miyagawa',
			trip_count: '500',
			entry_status: 'true'
		},
		{
			email: 'hashimoto@hashimoto',
			password: '111111',
			name: 'hashimoto',
			trip_count: '0',
			entry_status: 'true'
		},
		{
			email: 'furui@furui',
			password: '111111',
			name: 'furui',
			trip_count: '0',
			entry_status: 'true'
		},
		{
			email: 'gotou@gotou',
			password: '111111',
			name: 'gotou',
			trip_count: '3',
			entry_status: 'true'
		}
	]
)

Spot.create!(
	[
		{
			genre: '観光地',
			spot_name: 'ヘルシンキ大聖堂',
			spot_text: 'ヘルシンキの小高い丘の上に建つ、白亜の大聖堂。大階段に腰を下ろし、夏の日差しをいっぱいに浴びながら街を見下ろすと、「バルト海の乙女」と称される美しい街並が見えます。どうしても見たかった、ここからの景色。南にはエテラ港があり、オレンジ色のテントが並ぶマーケット広場（Kauppatori）が広がっていて、旬のブルーベリーやラズベリー、果物や野菜、キノコや海の幸、トナカイの角のアクセサリーや白樺のこぶで作られたククサなどが並び、にぎやかな人であふれています。',
			image: Rails.root.join("db/seed_img/sample1.jpg").open,
			cost: '4',
			business_hours: '月曜～土曜10：00-17:00、日曜11:00-15:00',
			stay_time: '約30分',
			position: '',
			access: 'ヘルシンキ中央駅から東方向に徒歩約5分～10分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: '観光地',
			spot_name: 'テンペリアウキオ教会',
			spot_text: 'テンペリアウキオ教会は、フィンランドのヘルシンキ市・トーロにある、フィンランド福音ルター派教会に属しているキリスト教会である。ティモ・スオマライネン とトゥオモ・スオマライネン の兄弟によって設計され、1969年に完成した。岩の教会とも呼ばれる。',
			image: Rails.root.join("db/seed_img/sample2.jpg").open,
			cost: '3',
			business_hours: '月曜～金曜10：00-17:00、土曜10:00-13:15,14:15-14:45,15:45-17:00、日曜12:00-17:00',
			stay_time: '約30分',
			position: '',
			access: '中央駅から３Tトラムに乗って、Sammonkatu 駅で降りてすぐ',
			public_status: '公開中',
			traveller_id: 2
		}
		# {
		# 	genre: '観光地',
		# 	spot_name: 'マリメッコ本社',
		# 	spot_text: 'マリメッコファンの聖地。旅行者でも訪問できるエリアは、二つのショップと社員食堂。中でも注目は型落ちのアイテムを割引価格で購入できるアウトレット。',
		# 	image: '',
		# 	cost: '',
		# 	business_hours: '',
		# 	stay_time: '',
		# 	position: '',
		# 	access: '',
		# 	public_status: '公開中',
		# 	traveller_id:  1
		# }
	]
)
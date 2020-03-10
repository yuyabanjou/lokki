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
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から東方向に徒歩約5分～10分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: '観光地',
			spot_name: 'マリメッコ本社',
			spot_text: 'マリメッコファンの聖地。旅行者でも訪問できるエリアは、二つのショップと社員食堂。中でも注目は型落ちのアイテムを割引価格で購入できるアウトレット。',
			image: Rails.root.join("db/seed_img/sample2.jpg").open,
			cost: '0',
			business_hours: '',
			stay_time: '',
			position: '',
			access: '地下鉄ヘルットミエニ駅から東方向に徒歩10分',
			public_status: '公開中',
			traveller_id: 2
		},
		{
			genre: 'ショッピング',
			spot_name: 'マリメッコアウトレット店',
			spot_text: 'シーズン遅れやB級品を販売するアウトレットへ！日本で購入するより遥かにお買い得のため、日本人は携帯を片手に価格をチェックしながらお買い物を楽しんでいる人がほとんど！wi-fi必須！！',
			image: Rails.root.join("db/seed_img/sample3.jpg").open,
			cost: '0',
			business_hours: '月〜金10:00−18:00、土10:00−16:00、定休日:日',
			stay_time: '',
			position: '',
			access: '地下鉄ヘルットミエニ駅から東方向に徒歩10分',
			public_status: '公開中',
			traveller_id: 2
		},
		{
			genre: 'その他',
			spot_name: 'ヘルシンキ中央駅',
			spot_text: 'ヘルシンキの玄関口となる駅。ヘルシンキからフィンランド国内の各都市に向かう長距離列車の大部分と全てのヘルシンキ近郊列車は当駅から出発する。',
			image: Rails.root.join("db/seed_img/sample4.jpg").open,
			cost: '0',
			business_hours: '',
			stay_time: '',
			position: '',
			access: '',
			public_status: '公開中',
			traveller_id: 2
		},
		{
			genre: '食事',
			spot_name: 'マリトリ　マリメッコ社員食堂',
			spot_text: 'マリメッコの社員も実際に利用する社員食堂は、テーブルクロスはもちろん食器まですべてマリメッコ！ランチの内容は2種類マリトリのサイトには週替わりランチのメニューが公開されています。（maritori.juuri.fi）',
			image: Rails.root.join("db/seed_img/sample5.jpg").open,
			cost: '13.4',
			business_hours: '月〜金10:30−14:00、定休日:土日',
			stay_time: '',
			position: '',
			access: '地下鉄ヘルットミエニ駅から東方向に徒歩10分',
			public_status: '公開中',
			traveller_id: 2
		},
		{
			genre: 'ショッピング',
			spot_name: 'エスマーケット',
			spot_text: 'フィンランドのS系スーパーマーケットS-marketはヘルットニエミ駅とマリメッコ本社の途中にあります。マリメッコ本社近くということもあり、マリメッコのペーパーナプキンが他店のS-marketより品揃いが良いため是非立ち寄りたいスポット！全体的に安くて品揃えが良いので、フィンランドのお土産もここで揃えられます。',
			image: Rails.root.join("db/seed_img/sample6.jpg").open,
			cost: '0',
			business_hours: '24時間営業、年中無休',
			stay_time: '',
			position: '',
			access: '地下鉄ヘルットミエニ駅から南に徒歩5分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: '観光地',
			spot_name: 'テンペリアウキオ教会',
			spot_text: '別名「ロックチャーチ」と呼ばれるように、岩の中にスッポリ隠れている。ガラスの窓からの光線が岩肌を柔らかく照らし出し、自然の懐に抱かれたかのような気持ちになる。パイプオルガンでの演奏もあり、神聖な気持ちになります。ヘルシンキ市民にとって、テンペリアウキオ教会で結婚式を挙げることは「夢」なのだとか。',
			image: Rails.root.join("db/seed_img/sample7.jpg").open,
			cost: '3',
			business_hours: '5月/9月 月〜土9:30-17:00 日12:00-17:00、6月〜8月 月〜木・土9:30-17:30 金9:30-20:00 日12:00-17:00、10〜4月 月〜土10:00-17:00 日12:00-17:00',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から西方向に徒歩13分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: '観光地',
			spot_name: 'アカデミヤ書店',
			spot_text: 'ヘルシンキにある代表的なアアルト建築といえばアカデミア書店。建物に入ってまず感じるのは、天井から降り注ぐ太陽の光。中央の天窓を囲むように２階と３階は回廊式になっていて、立つ位置によって目の前の風景が変わります。椅子や照明、ドアの把手など細部までアアルトデザイン。照明も何もかもトータルデザイン。',
			image: Rails.root.join("db/seed_img/sample8.jpg").open,
			cost: '0',
			business_hours: '月〜金9:00-20:00 土9:00-19:00 日11:00-18:00、定休日なし',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から南方向に徒歩4分',
			public_status: '公開中',
			traveller_id:  2
		},
		{
			genre: '食事',
			spot_name: 'アカデミヤ書店2F アアルトカフェ',
			spot_text: 'アアルトの名を冠した国内唯一のカフェ。店内には、アアルトがデザインした大理石のテーブルとゴールデンランプ、黒い革張りのいすが設置されています。映画「かもめ食堂」でサチエとミドリが出会った場所としても登場したカフェであり、ケーキも飲み物もとても美味しい。',
			image: Rails.root.join("db/seed_img/sample9.jpg").open,
			cost: '0',
			business_hours: '月〜金9:00-20:00 土9:00-19:00 日11:00-18:00、定休日なし',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から南方向に徒歩4分',
			public_status: '公開中',
			traveller_id: 2
		},
		{
			genre: '食事',
			spot_name: 'シーホース',
			spot_text: '1934年創業の老舗。手頃な値段で尚且つボリュームが凄まじいフィンランド料理が食べられるとあって、食事時はいつも地元民で混み合っています。平日の10:30-15:00にはお得なランチメニューがあります。量が多すぎて1人1プレートで十分。',
			image: Rails.root.join("db/seed_img/sample10.jpg").open,
			cost: '20',
			business_hours: '月～木10:30-24:00 金10:30-01:00 土12:00-0:00 日12:00-24:00、定休日なし',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から南方向に徒歩20分、ヘルシンキ中央駅からバス15分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: 'その他',
			spot_name: 'タンペレ駅',
			spot_text: 'フィンランドの主要都市であるタンペレは、ムーミン美術館を始め劇場や博物館も多い文化都市。高低差のある二つの湖に挟まれ、北側のナシ湖から南のピュハ湖に注ぐタンメルコスギ川の流れが町の中心を横断しています。この二つの異なる水位を利用した水力発電によって工業都市として発展しました。そのため少し不思議な街並みになっています。',
			image: Rails.root.join("db/seed_img/sample11.jpg").open,
			cost: '0',
			business_hours: '',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から電車で2時間(VR：intercityに乗る ) 9ユーロ〜',
			public_status: '公開中',
			traveller_id: 3
		},
		{
			genre: '観光地',
			spot_name: 'ムーミン美術館',
			spot_text: 'リニューアルオープンの体験型ミュージアム。2017年のフィンランド独立100年にリニューアルオープンしたムーミン美術館は、作者トーベ・ヤンソンの原画を存分に堪能できるムーミンファン必須の場所です。',
			image: Rails.root.join("db/seed_img/sample12.jpg").open,
			cost: '12',
			business_hours: '火～金9:00-19:00 土日11:00-18:00、定休日:月',
			stay_time: '',
			position: '',
			access: 'タンペレ駅から東方向に徒歩10分',
			public_status: '公開中',
			traveller_id: 3
		},
		{
			genre: '観光地',
			spot_name: 'タリピハ・オールド・ステイブル・ヤーズ',
			spot_text: '19世紀の厩舎跡を利用したパステルカラーの小屋やハンドメイド雑貨ショップ、チョコレート屋さん、カフェが集まる可愛いスポットです。',
			image: Rails.root.join("db/seed_img/sample13.jpg").open,
			cost: '0',
			business_hours: '月〜金11:00-18:00 土日11:00-16:00、定休日:夏至祭イヴ 夏至祭',
			stay_time: '',
			position: '',
			access: 'タンペレ駅から西方向に徒歩20分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: '観光地',
			spot_name: 'タンペレ大聖堂',
			spot_text: '外見とは異なる個性的なアートに注目。2000人を収容できる大聖堂は、天井のフレスコ画や色鮮やかなステンドグラス、マグヌス・エンケルによって描かれた祭壇画の美しさに圧倒されます。',
			image: Rails.root.join("db/seed_img/sample14.jpg").open,
			cost: '0',
			business_hours: '月〜日10:00-15:00 夏季10:00-17:00',
			stay_time: '',
			position: '',
			access: 'タンペレ駅から西方向に徒歩8分',
			public_status: '公開中',
			traveller_id: 3
		},
		{
			genre: '観光地',
			spot_name: 'ピューニッキ展望台',
			spot_text: '1929年に建てられた石造りのピューニッキ展望台は、1階のカフェのドーナツでも有名です。「フィンランド一おいしい」と行列ができるほど評判のドーナツはシュガーがたっぷりで甘くスパイシーなカルダモンの香りがコーヒーと相性抜群。展望台へ上がるとタンペレの景色が一望できます。',
			image: Rails.root.join("db/seed_img/sample15.jpg").open,
			cost: '2',
			business_hours: '夏期（6月上旬〜8下旬）9:00-21:00 夏至・クリスマスイヴ9:00-15:00 その他9:00-21:00、定休日なし',
			stay_time: '',
			position: '',
			access: 'タンペレ駅から南方向に徒歩30分、タンペレ駅からバス20分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: 'ショッピング',
			spot_name: 'フィンレイソン・ファクトリーショップ・タンペレ',
			spot_text: '北欧ファブリックで有名なフィンレイソン工場の跡地は古い建物がリノベーションされました。ムーミンのテキスタイルやキッチンウェアが揃う。アウトレットコーナーもあります。',
			image: Rails.root.join("db/seed_img/sample16.jpg").open,
			cost: '0',
			business_hours: '月〜金10:00-17:00 土10:00-17:00 日12:00-16:00、定休日:冬期の日',
			stay_time: '',
			position: '',
			access: 'タンペレ駅から南方向に徒歩20分、タンペレ駅からバス9分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: '食事',
			spot_name: 'トフト',
			spot_text: 'ムーミン美術館の施設内レストラン。「トフト」とは『ムーミン谷の十一月』に登場する小さなキャラクターの名前。スウェーデン語でボートの腰かける部分を指す言葉でもあります。天気の良い日はテラス席で食事をするととても気持ちが良いです。',
			image: Rails.root.join("db/seed_img/sample17.jpg").open,
			cost: '0',
			business_hours: '月11:00-22:00 火〜金11:00-22:00 土12:00-22:00 日12:00-18:00、定休日なし',
			stay_time: '',
			position: '',
			access: 'タンペレ駅から東方向に徒歩10分',
			public_status: '公開中',
			traveller_id: 3
		},
		{
			genre: 'ショッピング',
			spot_name: 'タンペレ・ホール・ショップ',
			spot_text: '美術館の入り口近くのショップは、ポストカードや書籍、マグカップなどムーミングッズがたくさん。ここでしか買えないアイテムはお土産にも喜ばれます。想像以上にコンパクトな売店。',
			image: Rails.root.join("db/seed_img/sample18.jpg").open,
			cost: '0',
			business_hours: '月9:00-18:00 火〜金9:00-20:00 土11:00-18:00 日12:00-18:00、定休日:夏至祭前後',
			stay_time: '',
			position: '',
			access: 'タンペレ駅から東方向に徒歩10分',
			public_status: '公開中',
			traveller_id: 3
		},
		{
			genre: '観光地',
			spot_name: 'カウパットリ',
			spot_text: '港に面した一帯に広がる青空市場。色とりどりのフルーツや野菜はもちろん、民芸品などのお土産までさまざまな露店が並び、歩いているだけで楽しくなります。夏の週末が最も規模が大きくなり、冬は出ている露店が少なく、少しさみしい。',
			image: Rails.root.join("db/seed_img/sample19.jpg").open,
			cost: '0',
			business_hours: '月〜木8:00-16:00 5月中旬〜9月中旬の日10:00-17:00、定休日:5月中旬〜9月中旬以外の日',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から東方向に徒歩15分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: 'ショッピング',
			spot_name: 'エスプラナーディ公園',
			spot_text: 'ヘルシンキの中心部にある東西約300ｍの公園。圏内にはフィンランドの偉人たちが置かれ、東にはヘルシンキの象徴であるバルト海の乙女像が可憐にたたずむ。テラス席があるカフェや野外コンサート場もあり、夏は1日中大賑わい。',
			image: Rails.root.join("db/seed_img/sample20.jpg").open,
			cost: '0',
			business_hours: '',
			stay_time: '',
			position: '',
			access: '',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: 'ショッピング',
			spot_name: '旧郵便局',
			spot_text: '可愛い切手や小包用ボックスなどデザイン好きにはたまならないアイテムを揃えるフィンランドの郵便局。ヘルシンキ中央駅のすぐ横にある大きな郵便局には郵便グッズだけではなくお菓子やデザイン小物などフィンランドのブランドがひと通り揃っています。ムーミンやフィンレイソンなどのグッズももちろんあります！',
			image: Rails.root.join("db/seed_img/sample21.jpg").open,
			cost: '0',
			business_hours: '月〜金8:00-20:00 土10:00-16:00 日12:00-16:00、定休日なし',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から徒歩1分',
			public_status: '公開中',
			traveller_id: 1
		},
		{
			genre: 'ショッピング',
			spot_name: 'アルテック',
			spot_text: 'ライフスタイルという言葉が定着するずっと前から、新しい暮らしの形を提案してきたアルテック。店内には、今私たちが北欧デザインとして思い浮かべる代表的な製品の数々が置かれています。北欧デザインの巨匠、アルヴァ・アアルトがアイデアを実現する場所として設立し、フィンランド発デザインを世界に発信してきた場所。シンプルで機能的なフィンランドデザインの真髄に触れるなら、まずはここから。見るだけでも楽しいアアルトの世界観を楽しめます。',
			image: Rails.root.join("db/seed_img/sample22.jpg").open,
			cost: '0',
			business_hours: '月〜金10:00-19:00 土10:00-18:00、定休日:日',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から北方向に徒歩5分',
			public_status: '公開中',
			traveller_id: 2
		},
		{
			genre: 'ショッピング',
			spot_name: 'ペーパーショップ',
			spot_text: '紙に魅了されたオーナーがオープンした紙専門店。店内には世界各国からのラッピング用品がズラリと並びます。そのどれもが北欧らしいテイストでまとめられていて、地元のフィンランド人だけではなくヘルシンキを訪れる観光客もたくさんいます。オリジナル製のあるポストカードや、グリーティングカード、そして招待状などもオーダーできます。',
			image: Rails.root.join("db/seed_img/sample23.jpg").open,
			cost: '0',
			business_hours: '月〜金10:00-18:00 土11:00ｰ16:00、定休日:日祝',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から北方向に徒歩16分',
			public_status: '公開中',
			traveller_id: 2
		},
		{
			genre: 'ショッピング',
			spot_name: 'カウニステ',
			spot_text: 'カウニステはフィンランド語で「飾る」を意味する言葉。若手クリエイターによって2008年に設立されました。色の組み合わせのセンスは日本人が好みます。',
			image: Rails.root.join("db/seed_img/sample24.jpg").open,
			cost: '0',
			business_hours: '火〜金11:00-18:00 土11:00-16:00、定休日:日月',
			stay_time: '',
			position: '',
			access: 'ヘルシンキ中央駅から西方向に徒歩12分',
			public_status: '公開中',
			traveller_id: 1
		},
	]
)

Itinerary.create!(
	[
		{
			traveller_id: '1',
			title: '暮らすように旅をする',
			synopsis: '観光・グルメ',
			theme: '６月２１日・６月２２日の２日間の旅',
			public_status: '非公開'
		},
		{
			traveller_id: '1',
			title: '暮らすように旅をする',
			synopsis: '観光・グルメ',
			theme: '６月２１日・６月２２日の２日間の旅',
			public_status: '非公開'
		}
	]
)

ItinerarySpot.create!(
	[
		{
			itinerary_id: '1',
			spot_id: '11',
			date: '',
			itinerary_spot_memo: '',
			reference_url: '',
			moving_genre: '電車',
			moving_memo: '３番ホームからA4出口へ向かう',
			fare: '9',
			arrival_plan_time: '202006211200',
			start_plan_time: '202006211230'
		},
		{
			itinerary_id: '1',
			spot_id: '12',
			date: '',
			itinerary_spot_memo: '2017年にフィンランド独立100年にリニューアルオープンした美術館。',
			reference_url: '',
			moving_genre: '徒歩',
			moving_memo: '',
			fare: '12',
			arrival_plan_time: '202006211230',
			start_plan_time: '202006211240'
		},
		{
			itinerary_id: '1',
			spot_id: '17',
			date: '',
			itinerary_spot_memo: 'ランチ お肉を食べる',
			reference_url: '',
			moving_genre: '',
			moving_memo: '',
			fare: '0',
			arrival_plan_time: '202006211400',
			start_plan_time: '202006211600'
		}
	]
)
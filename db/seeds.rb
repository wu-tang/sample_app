# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User
nippon  = User.create(name: "日本", email: "nippon@pepabo.com")
antipop = User.create(name: "antipop", email: "antipop@pepabo.com")

# 歴史
nengo   = nippon.rekishis.build(name: "年号"); nippon.save
keireki = antipop.rekishis.build(name: "経歴"); antipop.save

# 時代
## 年号
nengo.jidais.build(name: "昭和", start_date: Date.parse('1926-12-25'), end_date: Date.parse('1989-01-07'))
nengo.jidais.build(name: "平成", start_date: Date.parse('1989-01-08'), end_date: Date.today)
nengo.save

## 経歴
keireki.jidais.build(name: "小学校", start_date: Date.parse('1983-04-01'), end_date: Date.parse('1989-03-31'))
keireki.jidais.build(name: "中学校", start_date: Date.parse('1989-04-01'), end_date: Date.parse('1992-03-31'))
keireki.jidais.build(name: "高校", start_date: Date.parse('1992-04-01'), end_date: Date.parse('1995-03-31'))
keireki.jidais.build(name: "大学", start_date: Date.parse('1995-04-01'), end_date: Date.parse('1999-03-31'))
keireki.jidais.build(name: "フリーター", start_date: Date.parse('1999-04-01'), end_date: Date.parse('2002-03-31'))
keireki.jidais.build(name: "市役所", start_date: Date.parse('2002-04-01'), end_date: Date.parse('2008-04-30'))
keireki.jidais.build(name: "はてな", start_date: Date.parse('2008-05-01'), end_date: Date.parse('2012-04-30'))
keireki.jidais.build(name: "ペパボ", start_date: Date.parse('2012-05-01'), end_date: Date.today)
keireki.save

# 事件
## はてな
Jiken.create(name: "はてなダイアリー", date: Date.parse('2008-06-01'))
Jiken.create(name: "はてなブックマーク", date: Date.parse('2010-05-01'))
Jiken.create(name: "はてなダイアリー", date: Date.parse('2008-06-01'))

## ペパボ
Jiken.create(name: "技術基盤チーム", date: Date.parse('2012-05-01'))
Jiken.create(name: "技術責任者", date: Date.parse('2014-08-01'))
Jiken.create(name: "CTO", date: Date.parse('2015-03-20'))
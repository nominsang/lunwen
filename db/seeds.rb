# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Language.create title: "汉文", code: "chn", about: "中文"
Language.create title: "传统蒙古文", code: "mvf", about: "回鹘体蒙古文"
Language.create title: "基里尔蒙古文", code: "mhw", about: "基里尔体蒙古文"
Language.create title: "英文", code: "eng", about: ""
Language.create title: "俄文", code: "rus", about: ""
Language.create title: "日文", code: "jpn", about: ""

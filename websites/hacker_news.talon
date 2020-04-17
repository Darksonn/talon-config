title: /Hacker News - Mozilla Firefox/
-

go home:
  browser.focus_address()
  key(delete)
  insert("https://news.ycombinator.com/news")
  key(enter)
open comments:
  key(escape)
  sleep(100ms)
  key(' f l a g)
  sleep(100ms)
  key(tab tab enter)
open article:
  key(escape)
  sleep(100ms)
  key(' f l a g)
  sleep(100ms)
  key(shift-tab shift-tab shift-tab shift-tab enter)

hide comment: key(shift-tab enter)

amazon: "amazon"
emerson: "amazon"

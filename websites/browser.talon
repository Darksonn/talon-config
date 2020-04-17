title: /Mozilla Firefox/
-
(open | new) tab: app.tab_open()
last tab: app.tab_previous()
next tab: app.tab_next()
close tab: app.tab_close()
reopen tab: app.tab_reopen()

go back: browser.go_back()
go forward: browser.go_forward()
reload: key(f5)

open hacker:
  app.tab_open()
  insert("https://news.ycombinator.com/news")
  key(enter)

open users:
  app.tab_open()
  insert("https://users.rust-lang.org/")
  key(enter)

open reddit:
  app.tab_open()
  insert("https://reddit.com/")
  key(enter)

open youtube:
  app.tab_open()
  insert("https://youtube.com/")
  key(enter)

focus web:
  key(f6)

search tab slack$:
  browser.focus_address()
  sleep(50ms)
  key(% s l a c k)

search tab <phrase>$:
  browser.focus_address()
  sleep(50ms)
  key(%)
  dictate.lower(phrase)

pick first [tab]:
  key(tab)
  sleep(0ms)
  key(enter f6)

pick second [tab]:
  key(tab tab)
  sleep(250ms)
  key(enter f6)

pick third [tab]:
  key(tab tab tab)
  sleep(250ms)
  key(enter f6)

copy link:
  browser.focus_address()
  key(ctrl-c esc f6)
address: browser.focus_address()

find <phrase>$:
  key(ctrl-f)
  sleep(100ms)
  dictate.lower(phrase)

new link tab: key(ctrl-enter)

link <phrase>$:
  key(')
  sleep(100ms)
  dictate.lower(phrase)

link <phrase> enter:
  key(')
  sleep(100ms)
  dictate.lower(phrase)
  key(enter)

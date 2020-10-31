title: / - NVIM/
-

find: key(f)
find back: key(shift-f)
go next: key(n)
go back: key(shift-n)
command: key(escape)

zero: key(0)

window left: key(ctrl-w h)
window right: key(ctrl-w l)
window up: key(ctrl-w k)
window down: key(ctrl-w j)

open tree: key(ctrl-n)
close tree: key(ctrl-n)
background: key(ctrl-z)

set color column eighty:
  key(escape)
  insert(":set colorcolumn=82")
  key(enter)
  insert(":set textwidth=80")
  key(enter)

set color column none:
  key(escape)
  insert(":set colorcolumn=0")
  key(enter)
  insert(":set textwidth=0")
  key(enter)

edit in whim done:
  insert(":%!xclip -sel clip")
  key(enter : q ! enter)
  sleep(250ms)
  key(e x i t enter)
  sleep(250ms)
  key(ctrl-v)

search <word>:
  key(/)
  dictate.lower(word)
  key(enter)
search back <word>:
  key(?)
  dictate.lower(word)
  key(enter)

go save: key(: w enter)
go compile: key(escape : w enter f9 enter)
go quit: key(: q enter)
swap buffer: key(: b # enter)
buffer: key(: b space)
buffer <word>:
  key(: b space)
  dictate.lower(word)
go center: key(z z)
duplicate: key(shift-y p)

action(edit.delete_line):
  key(escape d d)
action(edit.line_end):
  key(escape $ a)
action(edit.line_start):
  key(escape 0 i)

action(edit.find):
  key(/)
  actions.insert(text)

action(edit.find_next):
  key(n)

action(edit.delete):
  key(s)

action(edit.extend_line_start):
  key(escape v 0)
action(edit.extend_line_end):
  key(escape v $)

action(edit.extend_word_left):
  key(escape v B)
action(edit.extend_word_right):
  key(escape v E)

(wipe | clear):
  key(ctrl-w)

double (wipe | clear):
  key(ctrl-w)
  key(ctrl-w)

triple (wipe | clear):
  key(ctrl-w)
  key(ctrl-w)
  key(ctrl-w)

four (wipe | clear):
  key(ctrl-w)
  key(ctrl-w)
  key(ctrl-w)
  key(ctrl-w)

five (wipe | clear):
  key(ctrl-w)
  key(ctrl-w)
  key(ctrl-w)
  key(ctrl-w)
  key(ctrl-w)

action(edit.word_right):
  key(escape w i)
action(edit.word_left):
  key(escape b i)

action(edit.undo):
  key(escape u)
action(edit.redo):
  key(escape ctrl-r)

title: / - NVIM/
-

find: key(f)
find back: key(shift-f)
go next: key(n)
go back: key(shift-n)

<digits>: insert(digits)
<number>: insert(number)

window left: key(ctrl-w h)
window right: key(ctrl-w l)
window up: key(ctrl-w k)
window down: key(ctrl-w j)

open tree: key(ctrl-n)
close tree: key(ctrl-n)
background: key(ctrl-z)

search <word>:
  key(/)
  dictate.lower(word)
  key(enter)
search back <word>:
  key(?)
  dictate.lower(word)
  key(enter)

save file: key(: w enter)
quit: key(: q enter)
buffer: key(: b space)
buffer <word>:
  key(: b space)
  dictate.lower(word)
center: key(z z)

action(edit.delete_line):
  key(escape d d)
action(edit.line_end):
  key(escape $ a)
action(edit.line_start):
  key(escape 0 i)

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

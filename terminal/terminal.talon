title: /Terminal/
-

foreground: "fg\n"
slab: key(enter)
go home: "cd\n"
cd: "cd "
go: "cd "
see up: "cd ..\n"
run ell: "l\n"
whim: "nvim "
git status: "git status\n"
git commit: "git commit\n"
git add: "git add "
git log: "git lg\n"
git big log: "git log\n"
git show: "git show "
cargo check: "cargo check\n"
cargo build: "cargo build\n"
cargo run: "cargo run\n"
cargo: "cargo "

dash dash: " --"

action(edit.delete_line):
  key(ctrl-c)
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
  key(ctrl-w ctrl-w)

triple (wipe | clear):
  key(ctrl-w ctrl-w ctrl-w)

four (wipe | clear):
  key(ctrl-w ctrl-w ctrl-w ctrl-w)

five (wipe | clear):
  key(ctrl-w ctrl-w ctrl-w ctrl-w ctrl-w)

action(edit.word_right):
  key(escape w i)
action(edit.word_left):
  key(escape b i)

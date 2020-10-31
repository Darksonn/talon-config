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
git diff: "git diff\n"
git commit: "git commit\n"
git push: "git push "
git pull: "git pull "
git merge: "git merge "
git switch$: "git switch "
git switch master: "git switch master"
git checkout$: "git checkout "
git checkout origin master: "git checkout origin/master"
git checkout upstream master: "git checkout upstream/master"
git fetch$: "git fetch\n"
git fetch upstream: "git fetch upstream\n"
git fetch origin: "git fetch origin\n"
git add: "git add "
git log: "git lg\n"
git big log: "git log\n"
git show: "git show "
cargo check: "cargo check\n"
cargo dog: "cargo doc\n"
cargo build: "cargo build\n"
cargo run: "cargo run\n"
cargo: "cargo "
rip grep: "rg "
tokyo dog: "tokiodoc\n"
tokyo test: "cargo test --all-features\n"
tokyo format$: "tokiofmt\n"
tokyo format do: "tokiofmtdo\n"

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

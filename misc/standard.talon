slap:
	edit.line_end()
	key(enter)
M D five: "md5"
(regex | rejex): "regex"
arguments: 
	insert("()")
	key(left)
in string: 
	insert("\"\"")
	key(left)
in generics | generics: 
	insert("<>")
	key(left)
in (index | array | squares): 
	insert("[]") 
	key(left)
self taught: "self."
(dickt in it | inside bracket | in bracket | in dictionary): 
	insert("{}") 
	key(left)
(create | open) code block:
	insert(" {}")
	key(left)
	key(enter)

funny: "heh"
yeah: "yeah"
four space: "    "
say bytes: "bytes"
say tokyo: "Tokio"
say tokyos: "Tokio's"
say stream: "stream"
say streams: "streams"
say async: "async"
say iter: "iter"
say iter mut: "iter_mut"
say into iter: "into_iter"

insert today: insert(user.current_date())
times <digits>: core.repeat_command(digits - 1)
times <number>: core.repeat_command(number - 1)

disc open: key(ctrl-k)
disc swap:
  key(ctrl-k)
  sleep(60ms)
  key(enter)
disc tokyo users:
  key(ctrl-k)
  insert("tokio-users")
  sleep(250ms)
  key(enter)
disc tokyo dog:
  key(ctrl-k)
  insert("tokio-docs")
  sleep(250ms)
  key(enter)
disc tokyo dev:
  key(ctrl-k)
  insert("tokio-dev")
  sleep(250ms)
  key(enter)
disc tokyo private:
  key(ctrl-k)
  insert("tokio-dev-private")
  sleep(250ms)
  key(enter)

double backtick:
  insert(" `` ")
  key(left left)

slap:
	edit.line_end()
	key(enter)
M D five: "md5"
(regex | rejex): "regex"
args: 
	insert("()")
	key(left)
in string: 
	insert("\"\"")
	key(left)
generics: 
	insert("<>")
	key(left)
[inside] (index | array): 
	insert("[]") 
	key(left)
self taught: "self."
(dickt in it | inside bracket | in bracket): 
	insert("{}") 
	key(left)

bytes: "bytes"
funny: "heh"
yeah: "yeah"
four space: "    "
tokyo: "Tokio"
tokyos: "Tokio's"
stream: "stream"
streams: "streams"

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

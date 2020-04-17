find it:
  edit.find()

next one:
  edit.find_next()

go word left: 
  edit.word_left()
back: 
  edit.word_left()
double back: 
  edit.word_left()
  edit.word_left()
triple back: 
  edit.word_left()
  edit.word_left()
  edit.word_left()
four back: 
  edit.word_left()
  edit.word_left()
  edit.word_left()
  edit.word_left()
five back: 
  edit.word_left()
  edit.word_left()
  edit.word_left()
  edit.word_left()
  edit.word_left()

go word right: 
  edit.word_right()
next: 
  edit.word_right()
double next: 
  edit.word_right()
  edit.word_right()
triple next: 
  edit.word_right()
  edit.word_right()
  edit.word_right()
four next: 
  edit.word_right()
  edit.word_right()
  edit.word_right()
  edit.word_right()
five next: 
  edit.word_right()
  edit.word_right()
  edit.word_right()
  edit.word_right()
  edit.word_right()

go left: 
  edit.left()

go right: 
  edit.right()

go up: 
  edit.up()
go far up: 
  edit.up()
  edit.up()
  edit.up()
  edit.up()
  edit.up()
  edit.up()
  edit.up()

go down: 
  edit.down()
go far down: 
  edit.down()
  edit.down()
  edit.down()
  edit.down()
  edit.down()
  edit.down()
  edit.down()

go line start: 
  edit.line_start()
  
go line end: 
  edit.line_end()

go way left: 
  edit.line_start()
  edit.line_start()
  
go way right: 
  edit.line_end()

go way down: 
  edit.file_end()
  
go way up: 
  edit.file_start()

go page down:
  edit.page_down()

go page up:
  edit.page_up()

# selecting
select line: 
  edit.line_start()
  edit.extend_line_end()

select left: 
  edit.extend_left()
  
select right: 
  edit.extend_right()

select up: 
  edit.extend_line_up()
  
select down: 
  edit.extend_line_down()

select word [left]:
  edit.extend_word_left()
  
select word right: 
  edit.extend_word_right()

select way left:
  edit.extend_line_start()
  
select way right: 
  edit.extend_line_end()
  
select way up: 
  edit.extend_file_start()
  
select way down: 
  edit.extend_file_end()

# editing
indent [more]:
  edit.indent_more()

(indent less | out dent):
  edit.indent_less()

# deleting
clear line: 
  edit.delete_line()

clear line left:
  edit.extend_line_start()
  edit.delete()

clear line right: 
  edit.extend_line_end()
  edit.delete()

clear up: 
  edit.extend_line_up()
  edit.delete()

clear down: 
  edit.extend_line_down()
  edit.delete()

clear left: 
  edit.extend_word_left()
  edit.delete()
  
clear right: 
  edit.extend_word_right()
  edit.delete()

clear way left: 
  edit.extend_line_start()
  edit.delete()

clear way right: 
  edit.extend_line_end()
  edit.delete()

clear way up: 
  edit.extend_file_start()
  edit.delete()
  
clear way down:
  edit.extend_file_end()
  edit.delete()

(wipe | clear):
  edit.extend_word_left()
  edit.delete()

double (wipe | clear):
  edit.extend_word_left()
  edit.extend_word_left()
  edit.delete()

triple (wipe | clear):
  edit.extend_word_left()
  edit.extend_word_left()
  edit.extend_word_left()
  edit.delete()

four (wipe | clear):
  edit.extend_word_left()
  edit.extend_word_left()
  edit.extend_word_left()
  edit.extend_word_left()
  edit.delete()

five (wipe | clear):
  edit.extend_word_left()
  edit.extend_word_left()
  edit.extend_word_left()
  edit.extend_word_left()
  edit.extend_word_left()
  edit.delete()

remove: key(backspace)
double remove: key(backspace backspace)
triple remove: key(backspace backspace backspace)
four remove: key(backspace backspace backspace backspace)
five remove: key(backspace backspace backspace backspace backspace)

(undo | under | skunks): edit.undo()
redo: edit.redo()

mode: all
-
talon sleep:
  speech.disable()
  user.notify_msg("Sleeping")
talon wake:
  speech.enable()
  mode.enable("command")
  user.notify_msg("Awake")

^normal mode$:
  speech.enable()
  mode.enable("command")
  mode.disable("dictation")
  user.notify_msg("Normal mode")
^dictation mode$:
  mode.disable("sleep")
  mode.disable("command")
  mode.enable("dictation")
  user.notify_msg("Dictation mode")

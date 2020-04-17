from talon import Module, Context, actions, imgui, Module, registry, ui
from talon.engine import engine
import os
from datetime import datetime

mod = Module()

@mod.action_class
class Actions:
    def notify_msg(msg: str):
        """Send a notification"""
        os.system(f"notify-send 'Talon' '{msg}' '-t' 3000")

    def current_date() -> str:
        """Compute current date"""
        return datetime.today().strftime('%Y-%m-%d')



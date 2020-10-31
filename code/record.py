from talon import Context, Module, actions, speech_system
from talon import speech_system
from talon_init import TALON_HOME
import os
import struct
import wave

ALWAYS_RECORD = True
OUTPUT_DIR = TALON_HOME/'recordings'

os.makedirs(OUTPUT_DIR, exist_ok=True)

current_phrase = None
def pre_phrase(d):
    global current_phrase
    current_phrase = d

def post_phrase(d):
    if ALWAYS_RECORD:
        phrase = ' '.join(getattr(d['parsed'], '_unmapped', d['phrase']))
        actions.self.record_wav(phrase)

speech_system.register('pre:phrase',  pre_phrase)
speech_system.register('post:phrase', post_phrase)

mod = Module()
@mod.action
def record_wav(words: str):
    """Record the phrase audio to a file"""
    words = words.strip()
    if not current_phrase or not current_phrase.get('samples') or not words:
        return
    samples = current_phrase['samples']
    scaled = (min(32767, max(-32767, int(s * 32767))) for s in samples)
    binary = struct.pack('<{}h'.format(len(samples)), *scaled)
    path = OUTPUT_DIR/f'{words}.wav'
    n = 0
    while path.exists():
        n += 1
        path = OUTPUT_DIR/f'{words}-{n}.wav'
    with wave.open(str(path), 'wb') as w:
        w.setnchannels(1)
        w.setsampwidth(2)
        w.setframerate(16000)
        w.writeframes(binary)
    print(f'saved: {path}')

@mod.action
def replay_wav(path: str):
    """Replay a wave file into the speech engine"""
    if not os.path.isabs(path) and not os.sep in path:
        path = OUTPUT_DIR/path
    with wave.open(str(path), 'rb') as w:
        frames = w.readframes(w.getnframes())
    samples = struct.unpack('<{}h'.format(len(frames)//2), frames)
    speech_system.engine.engine._on_audio_frame(samples, pad=False)

#author: Aniket Mukherjee
from flask import Flask
import emoji
import pyjokes
import commonlib
from commonlib import greeting

app=Flask(__name__)

@app.route('/')
def hello():
  greeting.greeting("Git Submodule")
  return pyjokes.get_joke()
  

@app.route('/fun')
def fun():
  return emoji.emojize('Python development with TKG & Skaffold is :thumbs_up:')

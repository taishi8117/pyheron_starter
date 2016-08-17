from itertools import cycle
from pyheron import Spout

class WordSpout(Spout):
  """WordSpout: emits a set of words repeatedly"""
  # output field declarer
  outputs = ['word']

  def initialize(self, config, context):
    self.words = cycle(["hello", "bye", "good", "bad", "heron", "storm"])
    self.emit_count = 0

  def next_tuple(self):
    word = next(self.words)
    self.emit([word])
    self.emit_count += 1
    if self.emit_count % 100000 == 0:
      self.logger.info("Emitted " + str(self.emit_count))


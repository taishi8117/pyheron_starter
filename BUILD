python_library(
  name='wc_bolts_spouts',
  sources=globs('word_count/bolts/*.py', 'word_count/spouts/*.py'),
  dependencies=['pyheron:pyheron']
)

python_binary(
  name='word_count',
  source='word_count/wc_topo_main.py',
  dependencies=[':wc_bolts_spouts'],
)

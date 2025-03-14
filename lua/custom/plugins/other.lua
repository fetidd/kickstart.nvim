return {
  'rgroli/other.nvim',
  name = 'other-nvim',
  opts = {
    mappings = {
      'python',
      {
        pattern = '/usr/local/ST/V2/code/(.*)/(.*).py',
        target = '/usr/local/ST/notlive/unittest/%1/Test_%2.py',
      },
      {
        pattern = '/usr/local/ST/notlive/unittest/(.*)/Test_(.*).py',
        target = '/usr/local/ST/V2/code/%1/%2.py',
      },
    },
  },
}

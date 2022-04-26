local dap_python = require('dap-python')

dap_python.setup('/usr/bin/python')
dap_python.test_runner = 'pytest'

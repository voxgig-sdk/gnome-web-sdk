
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { GnomeWebSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = GnomeWebSDK.test()
    equal(testsdk instanceof GnomeWebSDK, true,
      'GnomeWebSDK.test() must return a client synchronously')
  })

})

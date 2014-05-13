request = require("request")

describe "FOAAS", ->

  describe "/", ->
    it "should return 200 and an HTML page including 'FOAAS'", (done) ->
      request.get "http://foaas.com", (err, res, body) ->
        expect(err).toBe null
        expect(res.statusCode).toBe 200
        expect(body).toMatch ".*FOAAS.*"
        done()

  describe "/off", ->
    it "/off/Tom/Help should return 200, 'Fuck', 'Tom' and 'Help'", (done) ->
      request.get "http://foaas.com/off/Tom/Help", (err, res, body) ->
        expect(err).toBe null
        expect(res.statusCode).toBe 200
        expect(body).toMatch ".*Fuck.*"
        expect(body).toMatch ".*Tom.*"
        expect(body).toMatch ".*Help.*"
        done()
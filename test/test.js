/* global describe, it */
describe('filter.js', function () {
  describe('single()', function () {
    it('should produce regexp for matching single vocal', function () {
      single('o', false).should.equal('(^|[^aàáeèéêioòóôuüyæøå])([oòóô])($|[^aàáeèéêioòóôuüyæøå])')
    })
  })
})

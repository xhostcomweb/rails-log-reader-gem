# frozen_string_literal: true

RSpec.describe LogReader do
  it("has a version number") { expect(LogReader::VERSION).not_to be(nil) }
end

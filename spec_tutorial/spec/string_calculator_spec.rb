 require "string_calculator"

describe StringCalculator do

    describe ".add" do
        context "given an empty string" do
                it "returns zero" do
                expect(StringCalculator.add("")).to eql(0)
                end
            end

        context "two numbers" do
            context "Given '2,4'" do
                it "returns 6" do
                    expect(StringCalculator.add("2,4")).to eql(6)
                end
            end

            context "Given '17,100'" do
                it "returns 117" do
                    expect(StringCalculator.add("17,100")).to eql(117)
                end
            end

        end
    end
end

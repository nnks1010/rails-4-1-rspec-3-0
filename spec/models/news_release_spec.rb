require 'rails_helper'

describe NewsRelease, type: :model do
  # フォーマットされた日付とタイトルの文字列を返すこと
  it "returns the formatted date and title as a string" do
    news_release = NewsRelease.new(
      released_on: '2013-07-31',
      title: 'BigCo hires new CEO'
    )
    expect(news_release.title_with_date).to eq '2013-07-31: BigCo hires new CEO'
  end
end

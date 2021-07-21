require 'hashtags.rb'

describe 'Hashtag' do
  it 'Захватывается 1 хэштег' do
    expect(hashtags('words with #tags')).to eq %w(#tags)
	end

  it 'Захватывается несколько хэштегов' do
    expect(hashtags('words with #tags and #end')).to eq %w(#tags #end)
	end

  it 'Захватывается хэштег на русском' do
    expect(hashtags('words with #tags, #end, #луна')).to eq %w(#tags #end #луна)
	end

  it 'Захватывается хэштег с подчеркиваниями' do
    expect(hashtags('words with #tags, #end, #луна. #первый_класс')).to eq %w(#tags #end #луна #первый_класс)
	end

  it 'Захватывается хэштег с минусами' do
    expect(hashtags('words with #tags, #end, #луна. #первый_класс #one-two')).to eq %w(#tags #end #луна #первый_класс #one-two)
	end

  it 'Не захватывается знак вопроса' do
    expect(hashtags('words with #tags, #end, #луна. #первый_класс #one-two?')).to eq %w(#tags #end #луна #первый_класс #one-two)
	end

  it 'Не захватывается восклицательный знак' do
    expect(hashtags('words with #tags, #end, #луна. #первый_класс #one-two!')).to eq %w(#tags #end #луна #первый_класс #one-two)
	end

  it 'Не захватывается точка с запятой' do
    expect(hashtags('words with #tags, #end, #луна. #первый_класс; #one-two!')).to eq %w(#tags #end #луна #первый_класс #one-two)
	end
end




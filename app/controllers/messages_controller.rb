class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    message.save!
    message = if message.body.include?('今日の運勢')
                %w[大吉 中吉 小吉 吉 凶].sample
              elsif message.body.include?('天気')
                %w[晴れ 曇り 雨 雪].sample
              elsif message.body == 'こんにちは'
                'こんにちは'
              elsif message.body == '元気づけて'
                %w[頑張れ！ あきらめないで！ いつも応援してるよ！].sample
              else
                %w[こんにちは こんばんは おはようございます].sample
              end
    bot_chat = Message.new(body: message, bot: true)
    bot_chat.save!
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end

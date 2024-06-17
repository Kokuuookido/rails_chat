class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    message.save!
    bot_chat = Message.new(body: bot_message, bot: true)
    bot_chat.save!
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def bot_message
    'こんばんわ'
  end
end

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
    if message_params[:body] == "トヨタ"
      "日本車です。"
    elsif message_params[:body] == "ホンダ"
      "日本車です"
    elsif message_params[:body] == "BMW"
      "ドイツ車です。"
    elsif message_params[:body] == "メルセデスベンツ"
      "ドイツ車です。"
    else
      "わかりません。"
    end
    def bot_message
      if message_params[:body] == "春"
        "たけのこ"
      elsif message_params[:body] == "夏"
        "すいか"
      elsif message_params[:body] == "秋"
        "栗"
      elsif message_params[:body] == "冬"
"みかん"
      else
        "未対応のメッセージです"
      end
    end
    
  end
  
end

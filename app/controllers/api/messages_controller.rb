class Api::MessagesController < ApplicationController
    def index
      @group = Group.find(params[:group_id])
      @messages = @group.messages.includes(:user).where('id > ?', params[:last_id].to_i)
    end
end
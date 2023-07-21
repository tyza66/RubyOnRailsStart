class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    # 将请求发送过来的参数封装成一个Event对象
    @event = Event.new(event_params)
    # 保存Event对象到数据库中
    @event.save
    # 将用户页面重定向到index页面
    redirect_to :action => :index
  end

  def show
    @event = Event.find(params[:id])
    puts("我是查询结果："+@event.to_s)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to :action => :show, :id => @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to :action => :index
  end

  private #以下所有的方法都编程private方法
  #这里定义了一个event_params方法
  #透过require和permit将params这个_Hash过滤出params[:event][:name]和params[:event][:description]
  def event_params
    params.require(:event).permit(:name, :description)
  end

end
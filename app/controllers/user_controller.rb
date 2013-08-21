class UserController  < Devise::SessionsController
 
 def show
   if current_user!= nil
     id = current_user.id;
     @follow = []
     @initiate = []
  	 @user = User.find(current_user.id)
     @ideafollow = @user.userideass.where(follow:true)
     @ideainitiate = @user.userideass.where(initiate:true)
     
     @ideafollow.each do |id|
      @follow += Idea.where(id:id.idea_id)
     end 
    
     @ideainitiate.each do |id|
      @initiate += Idea.where(id:id.idea_id)
     end 
    
     respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @user }
     end
   
   else
   	  redirect_to home_path, notice: 'Please Login.'
   end
  end

  def follow
    
    id = current_user.id;
    idea_id = params[:idea_id];
    @user = Userideas.where(user_id:id, idea_id:idea_id, follow:true, initiate:false)            
    @Userideas = Userideas.new
    @Userideas.user_id = current_user.id
    @Userideas.initiate = false
    @Userideas.follow = true
    @Userideas.idea_id = params[:idea_id]
    
    if @user == []
      @Userideas.save
      redirect_to welcome_path, notice: 'Successfully follow that idea.'
    else
      redirect_to welcome_path, notice: 'Already following that idea.'
    end
  
  end

  def comment
    
    id = current_user.id;
    comment = params[:comment];
    idea_id = params[:idea_id];
    @user = Userideas.where(user_id:id, idea_id:idea_id, follow:true, initiate:false)
    @Userideas = Userideas.new
    @Userideas.user_id = current_user.id
    @Userideas.initiate = false

    if @user == []
      @Userideas.follow = false
    else
      @Userideas.follow = false
    end

    @Userideas.idea_id = params[:idea_id]
    @Userideas.comment = comment
    @Userideas.save
    redirect_to welcome_path, notice: 'successfully added a comment'
   end

  def showcomment
    
    if current_user != nil
      idea_id = params[:idea_id];
      @idea = Idea.find idea_id
      @userideas = @idea.userideass
    else
      redirect_to home_path, notice: 'Please Login'
    end  
    
  end

   def unfollow
    
    id = current_user.id;
    idea_id = params[:idea_id];
    Userideas.delete_all(idea_id:idea_id,user_id:id,follow:true)
    redirect_to welcome_path, notice: 'Successfully following that idea.'
    
  end
end

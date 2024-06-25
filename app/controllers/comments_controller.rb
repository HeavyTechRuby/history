class CommentsController < ApplicationController
  before_action :set_story, only: %i[ create update destroy ]
  before_action :set_comment, only: %i[ update destroy ]

  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = @story.comments.build(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to story_path(@story), notice: t(".created") }
        format.json { render "stories/show", status: :created, location: @comment }
      else
        @comments = @story.comments.order(created_at: :desc)
        format.html { render "stories/show", status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @story, notice: t(".updated") }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :show, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy!

    respond_to do |format|
      format.html { redirect_to @story, notice: t(".destroyed") }
      format.json { head :no_content }
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_story
    @story = Story.find(params[:story_id])
  end

  def comment_params
    params.require(:comment).permit(:body, :story_id)
  end
end

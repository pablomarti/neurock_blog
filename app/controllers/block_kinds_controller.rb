class BlockKindsController < ApplicationController
  # GET /block_kinds
  # GET /block_kinds.json
  def index
    @block_kinds = BlockKind.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @block_kinds }
    end
  end

  # GET /block_kinds/1
  # GET /block_kinds/1.json
  def show
    @block_kind = BlockKind.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @block_kind }
    end
  end

  # GET /block_kinds/new
  # GET /block_kinds/new.json
  def new
    @block_kind = BlockKind.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @block_kind }
    end
  end

  # GET /block_kinds/1/edit
  def edit
    @block_kind = BlockKind.find(params[:id])
  end

  # POST /block_kinds
  # POST /block_kinds.json
  def create
    @block_kind = BlockKind.new(params[:block_kind])

    respond_to do |format|
      if @block_kind.save
        format.html { redirect_to @block_kind, notice: 'Block kind was successfully created.' }
        format.json { render json: @block_kind, status: :created, location: @block_kind }
      else
        format.html { render action: "new" }
        format.json { render json: @block_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /block_kinds/1
  # PUT /block_kinds/1.json
  def update
    @block_kind = BlockKind.find(params[:id])

    respond_to do |format|
      if @block_kind.update_attributes(params[:block_kind])
        format.html { redirect_to @block_kind, notice: 'Block kind was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @block_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /block_kinds/1
  # DELETE /block_kinds/1.json
  def destroy
    @block_kind = BlockKind.find(params[:id])
    @block_kind.destroy

    respond_to do |format|
      format.html { redirect_to block_kinds_url }
      format.json { head :no_content }
    end
  end
end

module CrudHelper
  extend ActiveSupport::Concern

  private

  def update_record(record, params, redirect_url)
    respond_to do |format|
      if record.update(params)
        format.html { redirect_to redirect_url, notice: "#{record.model_name.human} was successfully updated." }
        format.json { render :show, status: :ok, location: record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: record.errors, status: :unprocessable_entity }
      end
    end
  end
end

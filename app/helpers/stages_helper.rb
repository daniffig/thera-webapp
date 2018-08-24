module StagesHelper

  def form_id(stage)
    "form-#{stage.base_id}"
  end

  def modal_id(stage)
    "modal-#{stage.base_id}"
  end

  def photo_file_input_id(stage)
    "photo-file-input-#{stage.base_id}"
  end

end
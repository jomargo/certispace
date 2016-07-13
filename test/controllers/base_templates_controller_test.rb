require 'test_helper'

class BaseTemplatesControllerTest < ActionController::TestCase
  setup do
    @base_template = base_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_template" do
    assert_difference('BaseTemplate.count') do
      post :create, base_template: { background: @base_template.background, html_file: @base_template.html_file, img_1: @base_template.img_1, img_2: @base_template.img_2, img_3: @base_template.img_3, img_4: @base_template.img_4, img_5: @base_template.img_5, logo: @base_template.logo, text_10: @base_template.text_10, text_1: @base_template.text_1, text_2: @base_template.text_2, text_3: @base_template.text_3, text_4: @base_template.text_4, text_5: @base_template.text_5, text_6: @base_template.text_6, text_7: @base_template.text_7, text_8: @base_template.text_8, text_9: @base_template.text_9 }
    end

    assert_redirected_to base_template_path(assigns(:base_template))
  end

  test "should show base_template" do
    get :show, id: @base_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_template
    assert_response :success
  end

  test "should update base_template" do
    patch :update, id: @base_template, base_template: { background: @base_template.background, html_file: @base_template.html_file, img_1: @base_template.img_1, img_2: @base_template.img_2, img_3: @base_template.img_3, img_4: @base_template.img_4, img_5: @base_template.img_5, logo: @base_template.logo, text_10: @base_template.text_10, text_1: @base_template.text_1, text_2: @base_template.text_2, text_3: @base_template.text_3, text_4: @base_template.text_4, text_5: @base_template.text_5, text_6: @base_template.text_6, text_7: @base_template.text_7, text_8: @base_template.text_8, text_9: @base_template.text_9 }
    assert_redirected_to base_template_path(assigns(:base_template))
  end

  test "should destroy base_template" do
    assert_difference('BaseTemplate.count', -1) do
      delete :destroy, id: @base_template
    end

    assert_redirected_to base_templates_path
  end
end

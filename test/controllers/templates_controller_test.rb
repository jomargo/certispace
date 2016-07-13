require 'test_helper'

class TemplatesControllerTest < ActionController::TestCase
  setup do
    @template = templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template" do
    assert_difference('Template.count') do
      post :create, template: { background: @template.background, base_template_id: @template.base_template_id, certificate_id: @template.certificate_id, img_1: @template.img_1, img_2: @template.img_2, img_3: @template.img_3, img_4: @template.img_4, img_5: @template.img_5, logo: @template.logo, text_10: @template.text_10, text_1: @template.text_1, text_2: @template.text_2, text_3: @template.text_3, text_4: @template.text_4, text_5: @template.text_5, text_6: @template.text_6, text_7: @template.text_7, text_8: @template.text_8, text_9: @template.text_9 }
    end

    assert_redirected_to template_path(assigns(:template))
  end

  test "should show template" do
    get :show, id: @template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template
    assert_response :success
  end

  test "should update template" do
    patch :update, id: @template, template: { background: @template.background, base_template_id: @template.base_template_id, certificate_id: @template.certificate_id, img_1: @template.img_1, img_2: @template.img_2, img_3: @template.img_3, img_4: @template.img_4, img_5: @template.img_5, logo: @template.logo, text_10: @template.text_10, text_1: @template.text_1, text_2: @template.text_2, text_3: @template.text_3, text_4: @template.text_4, text_5: @template.text_5, text_6: @template.text_6, text_7: @template.text_7, text_8: @template.text_8, text_9: @template.text_9 }
    assert_redirected_to template_path(assigns(:template))
  end

  test "should destroy template" do
    assert_difference('Template.count', -1) do
      delete :destroy, id: @template
    end

    assert_redirected_to templates_path
  end
end

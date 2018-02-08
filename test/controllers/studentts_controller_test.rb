require 'test_helper'

class StudenttsControllerTest < ActionController::TestCase
  setup do
    @studentt = studentts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studentts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studentt" do
    assert_difference('Studentt.count') do
      post :create, studentt: { age: @studentt.age, building: @studentt.building, city: @studentt.city, company: @studentt.company, datego: @studentt.datego, dateinput: @studentt.dateinput, dayofbirth: @studentt.dayofbirth, education: @studentt.education, email: @studentt.email, level: @studentt.level, name: @studentt.name, namejp: @studentt.namejp, nationality: @studentt.nationality, pas: @studentt.pas, pass: @studentt.pass, prefecture: @studentt.prefecture, remail: @studentt.remail, sex: @studentt.sex, telephone: @studentt.telephone, types: @studentt.types, work: @studentt.work, zipcode: @studentt.zipcode }
    end

    assert_redirected_to studentt_path(assigns(:studentt))
  end

  test "should show studentt" do
    get :show, id: @studentt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studentt
    assert_response :success
  end

  test "should update studentt" do
    patch :update, id: @studentt, studentt: { age: @studentt.age, building: @studentt.building, city: @studentt.city, company: @studentt.company, datego: @studentt.datego, dateinput: @studentt.dateinput, dayofbirth: @studentt.dayofbirth, education: @studentt.education, email: @studentt.email, level: @studentt.level, name: @studentt.name, namejp: @studentt.namejp, nationality: @studentt.nationality, pas: @studentt.pas, pass: @studentt.pass, prefecture: @studentt.prefecture, remail: @studentt.remail, sex: @studentt.sex, telephone: @studentt.telephone, types: @studentt.types, work: @studentt.work, zipcode: @studentt.zipcode }
    assert_redirected_to studentt_path(assigns(:studentt))
  end

  test "should destroy studentt" do
    assert_difference('Studentt.count', -1) do
      delete :destroy, id: @studentt
    end

    assert_redirected_to studentts_path
  end
end

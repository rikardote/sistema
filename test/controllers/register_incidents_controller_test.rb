require 'test_helper'

class RegisterIncidentsControllerTest < ActionController::TestCase
  setup do
    @register_incident = register_incidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:register_incidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create register_incident" do
    assert_difference('RegisterIncident.count') do
      post :create, register_incident: { empleado_id: @register_incident.empleado_id, fecha_final: @register_incident.fecha_final, fecha_inicial: @register_incident.fecha_inicial, incident_id: @register_incident.incident_id, periodo: @register_incident.periodo }
    end

    assert_redirected_to register_incident_path(assigns(:register_incident))
  end

  test "should show register_incident" do
    get :show, id: @register_incident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @register_incident
    assert_response :success
  end

  test "should update register_incident" do
    patch :update, id: @register_incident, register_incident: { empleado_id: @register_incident.empleado_id, fecha_final: @register_incident.fecha_final, fecha_inicial: @register_incident.fecha_inicial, incident_id: @register_incident.incident_id, periodo: @register_incident.periodo }
    assert_redirected_to register_incident_path(assigns(:register_incident))
  end

  test "should destroy register_incident" do
    assert_difference('RegisterIncident.count', -1) do
      delete :destroy, id: @register_incident
    end

    assert_redirected_to register_incidents_path
  end
end

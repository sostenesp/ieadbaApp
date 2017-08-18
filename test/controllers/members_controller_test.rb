require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post members_url, params: { member: { address: @member.address, affiliated_missions: @member.affiliated_missions, baptized: @member.baptized, birth_date: @member.birth_date, cell_phone: @member.cell_phone, complement: @member.complement, congregated: @member.congregated, congregation: @member.congregation, conjugate: @member.conjugate, cpf: @member.cpf, date_baptism: @member.date_baptism, description: @member.description, dizymist: @member.dizymist, ebd: @member.ebd, father_name: @member.father_name, marital_status: @member.marital_status, member: @member.member, mother_name: @member.mother_name, name: @member.name, phone: @member.phone, profession: @member.profession, rg: @member.rg, role: @member.role, sex: @member.sex, water_baptism_date: @member.water_baptism_date, workplace: @member.workplace } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { address: @member.address, affiliated_missions: @member.affiliated_missions, baptized: @member.baptized, birth_date: @member.birth_date, cell_phone: @member.cell_phone, complement: @member.complement, congregated: @member.congregated, congregation: @member.congregation, conjugate: @member.conjugate, cpf: @member.cpf, date_baptism: @member.date_baptism, description: @member.description, dizymist: @member.dizymist, ebd: @member.ebd, father_name: @member.father_name, marital_status: @member.marital_status, member: @member.member, mother_name: @member.mother_name, name: @member.name, phone: @member.phone, profession: @member.profession, rg: @member.rg, role: @member.role, sex: @member.sex, water_baptism_date: @member.water_baptism_date, workplace: @member.workplace } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end

# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: entryfy/org/api/v1/entities.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("entryfy/org/api/v1/entities.proto", :syntax => :proto3) do
    add_message "entryfy.org.api.v1.BizOperation" do
      optional :id, :uint64, 1
      optional :uuid, :string, 2
      optional :kind, :enum, 3, "entryfy.org.api.v1.BizOperation.Kind"
      optional :status, :enum, 4, "entryfy.org.api.v1.BizOperation.Status"
      optional :created_at, :message, 5, "google.protobuf.Timestamp"
      optional :updated_at, :message, 6, "google.protobuf.Timestamp"
      map :errors, :string, :string, 7
      optional :payload, :string, 8
    end
    add_enum "entryfy.org.api.v1.BizOperation.Kind" do
      value :KIND_UNSPECIFIED, 0
      value :KIND_CREATE_SCHEDULE, 1
      value :KIND_UPDATE_SCHEDULE, 2
      value :KIND_DELETE_SCHEDULE, 3
      value :KIND_CREATE_USER, 4
      value :KIND_UPDATE_USER, 5
      value :KIND_DELETE_USER, 6
      value :KIND_REGENERATE_QRCODE, 7
      value :KIND_REGENERATE_PASSCODE, 8
      value :KIND_CREATE_USER_GROUP, 9
      value :KIND_UPDATE_USER_GROUP, 10
      value :KIND_DELETE_USER_GROUP, 11
      value :KIND_CHANGE_USER_GROUP_DOORS, 12
      value :KIND_CHANGE_USER_GROUP_USERS, 13
      value :KIND_CHANGE_USER_GROUP_SCHEDULES, 14
      value :KIND_UPDATE_PINCODE, 15
      value :KIND_DELETE_PINCODE, 16
      value :KIND_ASSIGN_PINCODE, 17
      value :KIND_ASSIGN_KEY_CARD, 18
      value :KIND_DELETE_KEY_CARD, 19
      value :KIND_REPLACE_DOOR_CONTROLLER, 20
      value :KIND_RECOVER_DOOR_CONTROLLER, 21
      value :KIND_ENABLE_REX, 22
      value :KIND_CLONE_USER_GROUP, 23
      value :KIND_REGENERATE_ORGANIZATION_QRCODES, 24
      value :KIND_CONTROLLER_INTEGRITY_FIX, 25
      value :KIND_RESURRECT_DOOR_CONTROLLER, 26
      value :KIND_CONFIGURE_CONTROLLERS, 27
      value :KIND_CREATE_CHECKPOINT, 28
      value :KIND_UPDATE_CHECKPOINT, 29
      value :KIND_DELETE_CHECKPOINT, 30
      value :KIND_REGISTER_KEY_CARD, 31
      value :KIND_UPDATE_SETTINGS, 32
      value :KIND_CREATE_TEMPORARY_ACCESS, 33
      value :KIND_UPDATE_TEMPORARY_ACCESS, 34
      value :KIND_DELETE_TEMPORARY_ACCESS, 35
      value :KIND_CREATE_ACCESSES, 36
      value :KIND_UPDATE_ACCESSES, 37
      value :KIND_DELETE_ACCESSES, 38
      value :KIND_CREATE_USERS, 39
      value :KIND_UPDATE_USERS, 40
      value :KIND_DELETE_USERS, 41
      value :KIND_UPDATE_PINCODES, 42
      value :KIND_ASSIGN_KEY_CARDS, 43
    end
    add_enum "entryfy.org.api.v1.BizOperation.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_PENDING, 1
      value :STATUS_FINISHED, 2
      value :STATUS_FAILED, 3
      value :STATUS_PROCESSING, 4
      value :STATUS_ACCEPTED, 5
    end
    add_message "entryfy.org.api.v1.Settings" do
      repeated :default_auth_types_for_temp_access, :string, 1
    end
    add_message "entryfy.org.api.v1.Organization" do
      optional :slug, :string, 1
      optional :name, :string, 2
      optional :maintenance, :bool, 3
      optional :active, :bool, 4
      optional :created_at, :message, 5, "google.protobuf.Timestamp"
      optional :updated_at, :message, 6, "google.protobuf.Timestamp"
      optional :settings, :message, 7, "entryfy.org.api.v1.Settings"
    end
    add_message "entryfy.org.api.v1.User" do
      optional :id, :uint64, 1
      optional :first_name, :string, 2
      optional :last_name, :string, 3
      optional :email, :string, 4
      optional :valid_from, :message, 5, "google.protobuf.Timestamp"
      optional :valid_to, :message, 6, "google.protobuf.Timestamp"
      optional :enabled, :bool, 7
      optional :passcode, :string, 8
      optional :qrcode, :string, 9
      optional :status, :enum, 10, "entryfy.org.api.v1.User.Status"
      optional :post_login_screen_type, :enum, 11, "entryfy.org.api.v1.User.PostLoginScreenType"
      map :preferences, :string, :string, 12
      repeated :pincodes, :message, 13, "entryfy.org.api.v1.Pincode"
      repeated :key_cards, :message, 14, "entryfy.org.api.v1.KeyCard"
      repeated :roles, :string, 15
      optional :created_at, :message, 16, "google.protobuf.Timestamp"
      optional :updated_at, :message, 17, "google.protobuf.Timestamp"
      optional :uuid, :string, 18
    end
    add_enum "entryfy.org.api.v1.User.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_INITIAL, 1
      value :STATUS_READY, 2
      value :STATUS_CREATING, 3
      value :STATUS_UPDATING, 4
      value :STATUS_DELETING, 5
      value :STATUS_DELETED, 6
    end
    add_enum "entryfy.org.api.v1.User.PostLoginScreenType" do
      value :POST_LOGIN_SCREEN_TYPE_UNSPECIFIED, 0
      value :POST_LOGIN_SCREEN_TYPE_QR_CODE, 1
      value :POST_LOGIN_SCREEN_TYPE_PERMISSIONS, 2
      value :POST_LOGIN_SCREEN_TYPE_CREDENTIALS, 3
      value :POST_LOGIN_SCREEN_TYPE_ACTIVITY, 4
      value :POST_LOGIN_SCREEN_TYPE_SETTINGS, 5
      value :POST_LOGIN_SCREEN_TYPE_SCAN_QR, 6
    end
    add_message "entryfy.org.api.v1.Pincode" do
      optional :id, :uint64, 1
      optional :kind, :enum, 2, "entryfy.org.api.v1.Pincode.Kind"
      optional :label, :string, 3
      optional :value, :string, 4
      optional :status, :enum, 5, "entryfy.org.api.v1.Pincode.Status"
      optional :created_at, :message, 6, "google.protobuf.Timestamp"
      optional :updated_at, :message, 7, "google.protobuf.Timestamp"
      optional :uuid, :string, 8
      repeated :pincode_mappings, :message, 9, "entryfy.org.api.v1.PincodeMapping"
    end
    add_enum "entryfy.org.api.v1.Pincode.Kind" do
      value :KIND_UNSPECIFIED, 0
      value :KIND_DEFAULT, 1
      value :KIND_CUSTOM, 2
    end
    add_enum "entryfy.org.api.v1.Pincode.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_INITIAL, 1
      value :STATUS_READY, 2
      value :STATUS_CREATING, 3
      value :STATUS_UPDATING, 4
      value :STATUS_DELETING, 5
      value :STATUS_DELETED, 6
    end
    add_message "entryfy.org.api.v1.PincodeMapping" do
      optional :id, :uint64, 1
      optional :uuid, :string, 2
      optional :pincode_id, :uint64, 3
      optional :security_device_id, :uint64, 4
      optional :user_group_id, :uint64, 5
      optional :created_at, :message, 6, "google.protobuf.Timestamp"
      optional :updated_at, :message, 7, "google.protobuf.Timestamp"
      optional :security_device_uuid, :string, 8
      optional :user_group_uuid, :string, 9
    end
    add_message "entryfy.org.api.v1.KeyCard" do
      optional :id, :uint64, 1
      optional :nr, :string, 2
      optional :value, :string, 3
      optional :label, :string, 4
      optional :status, :enum, 5, "entryfy.org.api.v1.KeyCard.Status"
      optional :created_at, :message, 6, "google.protobuf.Timestamp"
      optional :updated_at, :message, 7, "google.protobuf.Timestamp"
      optional :uuid, :string, 8
      repeated :key_card_mappings, :message, 9, "entryfy.org.api.v1.KeyCardMapping"
    end
    add_enum "entryfy.org.api.v1.KeyCard.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_INITIAL, 1
      value :STATUS_READY, 2
      value :STATUS_CREATING, 3
      value :STATUS_UPDATING, 4
      value :STATUS_DELETING, 5
      value :STATUS_DELETED, 6
    end
    add_message "entryfy.org.api.v1.KeyCardMapping" do
      optional :id, :uint64, 1
      optional :uuid, :string, 2
      optional :key_card_id, :uint64, 3
      optional :security_device_id, :uint64, 4
      optional :user_group_id, :uint64, 5
      optional :created_at, :message, 6, "google.protobuf.Timestamp"
      optional :updated_at, :message, 7, "google.protobuf.Timestamp"
      optional :security_device_uuid, :string, 8
      optional :user_group_uuid, :string, 9
    end
    add_message "entryfy.org.api.v1.Schedule" do
      optional :id, :uint64, 1
      optional :default, :bool, 2
      optional :name, :string, 3
      optional :description, :string, 4
      optional :slug, :string, 5
      optional :schedule_definition, :string, 6
      optional :exception_definition, :string, 7
      optional :status, :enum, 8, "entryfy.org.api.v1.Schedule.Status"
      optional :created_at, :message, 9, "google.protobuf.Timestamp"
      optional :updated_at, :message, 10, "google.protobuf.Timestamp"
      optional :uuid, :string, 11
      map :preferences, :string, :string, 12
    end
    add_enum "entryfy.org.api.v1.Schedule.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_INITIAL, 1
      value :STATUS_READY, 2
      value :STATUS_CREATING, 3
      value :STATUS_UPDATING, 4
      value :STATUS_DELETING, 5
      value :STATUS_DELETED, 6
    end
    add_message "entryfy.org.api.v1.SecurityDevice" do
      optional :id, :uint64, 1
      optional :parent_id, :uint64, 2
      optional :name, :string, 3
      optional :description, :string, 4
      optional :kind, :enum, 5, "entryfy.org.api.v1.SecurityDevice.Kind"
      optional :latitude, :double, 6
      optional :longitude, :double, 7
      optional :max_radius, :uint32, 8
      optional :remote_access_enabled, :bool, 9
      optional :timezone, :string, 10
      optional :created_at, :message, 11, "google.protobuf.Timestamp"
      optional :updated_at, :message, 12, "google.protobuf.Timestamp"
      optional :online, :bool, 13
      optional :entry_qrcode, :string, 14
      optional :exit_qrcode, :string, 15
      map :preferences, :string, :string, 16
      optional :uuid, :string, 17
      optional :parent_uuid, :string, 18
    end
    add_enum "entryfy.org.api.v1.SecurityDevice.Kind" do
      value :KIND_UNSPECIFIED, 0
      value :KIND_SITE, 1
      value :KIND_SECTION, 2
      value :KIND_DOOR_CONTROLLER, 3
      value :KIND_DOOR, 4
      value :KIND_UNKNOWN, 5
    end
    add_message "entryfy.org.api.v1.SecurityCamera" do
      optional :id, :uint64, 1
      optional :controller_login, :string, 2
      optional :controller_password, :string, 3
      optional :controller_url, :string, 4
      optional :controller_token, :string, 5
      optional :enable_distance_check, :bool, 6
      optional :enable_insecure_qr, :bool, 7
      optional :id_point_token, :string, 8
      optional :mac_address, :string, 9
      optional :name, :string, 10
      optional :qr_timelimit_seconds, :uint32, 11
      optional :passcode, :string, 12
      optional :door_token, :string, 13
      optional :controller_latitude, :double, 14
      optional :controller_longitude, :double, 15
      optional :controller_max_distance_meters, :uint32, 16
      optional :serial_number, :string, 17
      optional :created_at, :message, 18, "google.protobuf.Timestamp"
      optional :updated_at, :message, 19, "google.protobuf.Timestamp"
      optional :door_device, :message, 20, "entryfy.org.api.v1.SecurityDevice"
      optional :uuid, :string, 21
    end
    add_message "entryfy.org.api.v1.UserGroup" do
      optional :id, :uint64, 1
      optional :name, :string, 2
      optional :enabled, :bool, 3
      optional :valid_from, :message, 4, "google.protobuf.Timestamp"
      optional :valid_to, :message, 5, "google.protobuf.Timestamp"
      optional :entry_auth_type, :enum, 6, "entryfy.org.api.v1.UserGroup.AuthType"
      optional :exit_auth_type, :enum, 7, "entryfy.org.api.v1.UserGroup.AuthType"
      optional :status, :enum, 8, "entryfy.org.api.v1.UserGroup.Status"
      map :preferences, :string, :string, 9
      optional :created_at, :message, 10, "google.protobuf.Timestamp"
      optional :updated_at, :message, 11, "google.protobuf.Timestamp"
      repeated :security_devices, :message, 12, "entryfy.org.api.v1.SecurityDevice"
      repeated :users, :message, 13, "entryfy.org.api.v1.User"
      repeated :schedules, :message, 14, "entryfy.org.api.v1.Schedule"
      optional :uuid, :string, 15
    end
    add_enum "entryfy.org.api.v1.UserGroup.AuthType" do
      value :AUTH_TYPE_UNSPECIFIED, 0
      value :AUTH_TYPE_REX, 1
      value :AUTH_TYPE_CARD, 2
      value :AUTH_TYPE_PIN, 3
      value :AUTH_TYPE_CARD_PLUS_PIN, 4
      value :AUTH_TYPE_SCAN, 5
      value :AUTH_TYPE_SCAN_PLUS_KEYPAD, 6
      value :AUTH_TYPE_SCAN_PLUS_PHONE, 7
      value :AUTH_TYPE_KEY_CARD, 8
      value :AUTH_TYPE_REMOTE, 9
      value :AUTH_TYPE_REMOTE_PLUS_PHONE, 10
      value :AUTH_TYPE_CARD_PLUS_PHONE, 11
      value :AUTH_TYPE_PASSCODE, 12
      value :AUTH_TYPE_KEY_CARD_PLUS_PIN, 13
    end
    add_enum "entryfy.org.api.v1.UserGroup.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_INITIAL, 1
      value :STATUS_READY, 2
      value :STATUS_CREATING, 3
      value :STATUS_UPDATING, 4
      value :STATUS_DELETING, 5
      value :STATUS_DELETED, 6
    end
    add_message "entryfy.org.api.v1.AccessLog" do
      optional :uuid, :string, 1
      optional :access_description, :enum, 2, "entryfy.org.api.v1.AccessLog.AccessDescription"
      optional :time, :message, 3, "google.protobuf.Timestamp"
      optional :door_uuid, :string, 4
      optional :section_uuid, :string, 5
      optional :site_uuid, :string, 6
      optional :direction, :enum, 7, "entryfy.org.api.v1.AccessLog.Direction"
      optional :reason, :string, 8
      optional :auth_type, :enum, 9, "entryfy.org.api.v1.AccessLog.AuthType"
      optional :user_uuid, :string, 10
      optional :user_email, :string, 11
      optional :user_name, :string, 12
      optional :pincode_uuid, :string, 13
      optional :pincode_value, :string, 14
    end
    add_enum "entryfy.org.api.v1.AccessLog.AccessDescription" do
      value :ACCESS_DESCRIPTION_UNSPECIFIED, 0
      value :ACCESS_DESCRIPTION_ACCESS_GRANTED, 1
      value :ACCESS_DESCRIPTION_ACCESS_DENIED, 2
    end
    add_enum "entryfy.org.api.v1.AccessLog.Direction" do
      value :DIRECTION_UNSPECIFIED, 0
      value :DIRECTION_IN, 1
      value :DIRECTION_OUT, 2
      value :DIRECTION_UNDEFINED, 3
    end
    add_enum "entryfy.org.api.v1.AccessLog.AuthType" do
      value :AUTH_TYPE_UNSPECIFIED, 0
      value :AUTH_TYPE_REX, 1
      value :AUTH_TYPE_CARD, 2
      value :AUTH_TYPE_PIN, 3
      value :AUTH_TYPE_CARD_PLUS_PIN, 4
      value :AUTH_TYPE_SCAN, 5
      value :AUTH_TYPE_SCAN_PLUS_KEYPAD, 6
      value :AUTH_TYPE_SCAN_PLUS_PHONE, 7
      value :AUTH_TYPE_KEY_CARD, 8
      value :AUTH_TYPE_REMOTE, 9
      value :AUTH_TYPE_REMOTE_PLUS_PHONE, 10
      value :AUTH_TYPE_CARD_PLUS_PHONE, 11
      value :AUTH_TYPE_PASSCODE, 12
      value :AUTH_TYPE_KEY_CARD_PLUS_PIN, 13
    end
    add_message "entryfy.org.api.v1.IndoorSession" do
      optional :id, :uint64, 1
      optional :start_time, :message, 2, "google.protobuf.Timestamp"
      optional :end_time, :message, 3, "google.protobuf.Timestamp"
      optional :kind, :enum, 4, "entryfy.org.api.v1.IndoorSession.Kind"
      optional :is_tailgated, :bool, 5
      optional :security_device, :message, 6, "entryfy.org.api.v1.SecurityDevice"
      optional :checkpoint, :message, 7, "entryfy.org.api.v1.Checkpoint"
      optional :user, :message, 8, "entryfy.org.api.v1.User"
      optional :uuid, :string, 9
    end
    add_enum "entryfy.org.api.v1.IndoorSession.Kind" do
      value :KIND_UNSPECIFIED, 0
      value :KIND_SECURITY_DEVICE, 1
      value :KIND_CHECKPOINT, 2
    end
    add_message "entryfy.org.api.v1.UserGroupSet" do
      optional :id, :uint64, 1
      optional :name, :string, 2
      optional :description, :string, 3
      repeated :user_groups, :message, 4, "entryfy.org.api.v1.UserGroup"
      optional :created_at, :message, 5, "google.protobuf.Timestamp"
      optional :updated_at, :message, 6, "google.protobuf.Timestamp"
      optional :uuid, :string, 7
      map :preferences, :string, :string, 8
    end
    add_message "entryfy.org.api.v1.Checkpoint" do
      optional :id, :uint64, 1
      optional :name, :string, 2
      optional :description, :string, 3
      optional :status, :enum, 4, "entryfy.org.api.v1.Checkpoint.Status"
      repeated :security_device_ids, :uint64, 5
      optional :created_at, :message, 6, "google.protobuf.Timestamp"
      optional :updated_at, :message, 7, "google.protobuf.Timestamp"
      optional :uuid, :string, 8
    end
    add_enum "entryfy.org.api.v1.Checkpoint.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_ACTIVE, 1
      value :STATUS_DELETED, 2
    end
    add_message "entryfy.org.api.v1.TemporaryAccess" do
      optional :uuid, :string, 1
      optional :name, :string, 2
      optional :status, :enum, 3, "entryfy.org.api.v1.TemporaryAccess.Status"
      map :preferences, :string, :string, 4
      optional :valid_from, :message, 5, "google.protobuf.Timestamp"
      optional :valid_to, :message, 6, "google.protobuf.Timestamp"
      optional :created_at, :message, 7, "google.protobuf.Timestamp"
      optional :updated_at, :message, 8, "google.protobuf.Timestamp"
      optional :schedule, :message, 9, "entryfy.org.api.v1.Schedule"
      repeated :doors, :message, 10, "entryfy.org.api.v1.TemporaryAccessDoor"
      repeated :users, :message, 11, "entryfy.org.api.v1.TemporaryAccessUser"
    end
    add_enum "entryfy.org.api.v1.TemporaryAccess.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_INITIAL, 1
      value :STATUS_READY, 2
      value :STATUS_CREATING, 3
      value :STATUS_UPDATING, 4
      value :STATUS_DELETING, 5
      value :STATUS_DELETED, 6
    end
    add_message "entryfy.org.api.v1.TemporaryAccessDoor" do
      optional :uuid, :string, 1
      optional :temporary_access_uuid, :string, 2
      optional :security_device_uuid, :string, 3
      optional :lock_unlock_enabled, :bool, 4
      repeated :in_auth_types, :string, 5
      repeated :out_auth_types, :string, 6
      optional :created_at, :message, 7, "google.protobuf.Timestamp"
      optional :updated_at, :message, 8, "google.protobuf.Timestamp"
    end
    add_message "entryfy.org.api.v1.TemporaryAccessUser" do
      optional :uuid, :string, 1
      optional :temporary_access_uuid, :string, 2
      optional :user_uuid, :string, 3
      optional :created_at, :message, 4, "google.protobuf.Timestamp"
      optional :updated_at, :message, 5, "google.protobuf.Timestamp"
    end
    add_message "entryfy.org.api.v1.Access" do
      optional :uuid, :string, 1
      optional :name, :string, 2
      optional :kind, :enum, 3, "entryfy.org.api.v1.Access.Kind"
      optional :status, :enum, 4, "entryfy.org.api.v1.Access.Status"
      map :preferences, :string, :string, 5
      optional :valid_from, :message, 6, "google.protobuf.Timestamp"
      optional :valid_to, :message, 7, "google.protobuf.Timestamp"
      optional :created_at, :message, 8, "google.protobuf.Timestamp"
      optional :updated_at, :message, 9, "google.protobuf.Timestamp"
      optional :schedule, :message, 10, "entryfy.org.api.v1.Schedule"
      repeated :doors, :message, 11, "entryfy.org.api.v1.AccessDoor"
      repeated :users, :message, 12, "entryfy.org.api.v1.AccessUser"
      optional :description, :string, 13
    end
    add_enum "entryfy.org.api.v1.Access.Kind" do
      value :KIND_UNSPECIFIED, 0
      value :KIND_PERMANENT, 1
      value :KIND_TEMPORARY, 2
    end
    add_enum "entryfy.org.api.v1.Access.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_INITIAL, 1
      value :STATUS_READY, 2
      value :STATUS_CREATING, 3
      value :STATUS_UPDATING, 4
      value :STATUS_DELETING, 5
      value :STATUS_DELETED, 6
    end
    add_message "entryfy.org.api.v1.AccessDoor" do
      optional :uuid, :string, 1
      optional :access_uuid, :string, 2
      optional :door_uuid, :string, 3
      optional :lock_unlock_enabled, :bool, 4
      repeated :in_auth_types, :string, 5
      repeated :out_auth_types, :string, 6
      optional :created_at, :message, 7, "google.protobuf.Timestamp"
      optional :updated_at, :message, 8, "google.protobuf.Timestamp"
    end
    add_message "entryfy.org.api.v1.AccessUser" do
      optional :uuid, :string, 1
      optional :access_uuid, :string, 2
      optional :user_uuid, :string, 3
      optional :created_at, :message, 4, "google.protobuf.Timestamp"
      optional :updated_at, :message, 5, "google.protobuf.Timestamp"
    end
    add_message "entryfy.org.api.v1.Guest" do
      optional :email, :string, 1
      optional :first_name, :string, 2
      optional :last_name, :string, 3
    end
    add_message "entryfy.org.api.v1.DoorStatus" do
      optional :uuid, :string, 1
      optional :door_uuid, :string, 2
      optional :status, :enum, 3, "entryfy.org.api.v1.DoorStatus.Status"
      optional :created_at, :message, 4, "google.protobuf.Timestamp"
      optional :updated_at, :message, 5, "google.protobuf.Timestamp"
    end
    add_enum "entryfy.org.api.v1.DoorStatus.Status" do
      value :STATUS_UNSPECIFIED, 0
      value :STATUS_ACCESSED, 1
      value :STATUS_CLOSED, 2
      value :STATUS_UNLOCKED, 3
      value :STATUS_LOCKED, 4
      value :STATUS_DOUBLE_LOCKED, 5
      value :STATUS_OPEN, 6
    end
  end
end

module Entryfy
  module Org
    module Api
      module V1
        BizOperation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.BizOperation").msgclass
        BizOperation::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.BizOperation.Kind").enummodule
        BizOperation::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.BizOperation.Status").enummodule
        Settings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Settings").msgclass
        Organization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Organization").msgclass
        User = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.User").msgclass
        User::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.User.Status").enummodule
        User::PostLoginScreenType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.User.PostLoginScreenType").enummodule
        Pincode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Pincode").msgclass
        Pincode::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Pincode.Kind").enummodule
        Pincode::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Pincode.Status").enummodule
        PincodeMapping = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.PincodeMapping").msgclass
        KeyCard = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.KeyCard").msgclass
        KeyCard::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.KeyCard.Status").enummodule
        KeyCardMapping = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.KeyCardMapping").msgclass
        Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Schedule").msgclass
        Schedule::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Schedule.Status").enummodule
        SecurityDevice = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.SecurityDevice").msgclass
        SecurityDevice::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.SecurityDevice.Kind").enummodule
        SecurityCamera = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.SecurityCamera").msgclass
        UserGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.UserGroup").msgclass
        UserGroup::AuthType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.UserGroup.AuthType").enummodule
        UserGroup::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.UserGroup.Status").enummodule
        AccessLog = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.AccessLog").msgclass
        AccessLog::AccessDescription = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.AccessLog.AccessDescription").enummodule
        AccessLog::Direction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.AccessLog.Direction").enummodule
        AccessLog::AuthType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.AccessLog.AuthType").enummodule
        IndoorSession = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.IndoorSession").msgclass
        IndoorSession::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.IndoorSession.Kind").enummodule
        UserGroupSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.UserGroupSet").msgclass
        Checkpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Checkpoint").msgclass
        Checkpoint::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Checkpoint.Status").enummodule
        TemporaryAccess = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.TemporaryAccess").msgclass
        TemporaryAccess::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.TemporaryAccess.Status").enummodule
        TemporaryAccessDoor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.TemporaryAccessDoor").msgclass
        TemporaryAccessUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.TemporaryAccessUser").msgclass
        Access = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Access").msgclass
        Access::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Access.Kind").enummodule
        Access::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Access.Status").enummodule
        AccessDoor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.AccessDoor").msgclass
        AccessUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.AccessUser").msgclass
        Guest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.Guest").msgclass
        DoorStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.DoorStatus").msgclass
        DoorStatus::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("entryfy.org.api.v1.DoorStatus.Status").enummodule
      end
    end
  end
end

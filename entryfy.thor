#!/usr/bin/env ruby

require 'grpc'
require 'json'
require 'securerandom'
require 'thor'
require 'yaml'

require('./vendor/entryfy/account/api/v1/sessions_service_services_pb.rb')
require('./vendor/entryfy/org/user/api/v1/doors_service_services_pb.rb')

$config = YAML.load(
  File.open('config/entryfy.yml').read
)

$credentials = ::GRPC::Core::ChannelCredentials.new

module ::Entryfy
  class AccountService < Thor
    desc "login", "Login against the Entryfy AccountService"
    def login(username, password, device_uuid = nil)
      begin
        device_uuid ||= SecureRandom.uuid

        session_stub = ::Entryfy::Account::Api::V1::SessionsService::Stub.new($config[ENV['ENTRYFY_ENV']]['accountapi'], $credentials)

        create_session_request = ::Entryfy::Account::Api::V1::CreateSessionRequest.new(username: username, password: password, device_uuid: device_uuid)

        response = session_stub.create_session(create_session_request)

        puts ::JSON.pretty_generate(::JSON.parse(response.to_json))
      rescue ArgumentError, GRPC::Unavailable, GRPC::PermissionDenied, GRPC::InvalidArgument => e
        puts ::JSON.pretty_generate(::JSON.parse(e.debug_error_string))
      rescue ArgumentError => e
        puts "#{e.message} #{e.backtrace.join("\n")}"
      end
    end
    desc "logout", "Logout from the Entryfy AccountService"
    def logout(auth_token)
      begin
        session_stub = ::Entryfy::Account::Api::V1::SessionsService::Stub.new($config[ENV['ENTRYFY_ENV']]['accountapi'], $credentials)

        destroy_session_request = ::Entryfy::Account::Api::V1::DestroySessionRequest.new

        metadata = { metadata: { authorization: "Bearer #{auth_token}" } }

        response = session_stub.destroy_session(destroy_session_request, metadata)

        puts ::JSON.pretty_generate(::JSON.parse(response.to_json))
      rescue GRPC::Unavailable, GRPC::PermissionDenied, GRPC::InvalidArgument => e
        puts ::JSON.pretty_generate(::JSON.parse(e.debug_error_string))
      rescue ArgumentError => e
        puts "#{e.message} #{e.backtrace.join("\n")}"
      end
    end
    desc "reissue", "Reissue auth_token from the Entryfy AccountService"
    def reissue(reissue_token)
      begin
        session_stub = ::Entryfy::Account::Api::V1::SessionsService::Stub.new($config[ENV['ENTRYFY_ENV']]['accountapi'], $credentials)

        reissue_session_request = ::Entryfy::Account::Api::V1::ReissueSessionRequest.new(reissue_token: reissue_token)

        response = session_stub.reissue_session(reissue_session_request)

        puts ::JSON.pretty_generate(::JSON.parse(response.to_json))
      rescue GRPC::Unavailable, GRPC::PermissionDenied, GRPC::InvalidArgument => e
        puts ::JSON.pretty_generate(::JSON.parse(e.debug_error_string))
      rescue ArgumentError => e
       puts "#{e.message} #{e.backtrace.join("\n")}"
      end
    end
  end
  class OrgService < Thor
    desc "RemoteOpen", "Open a door remotely through the API"
    def remote_open(auth_token, org_slug, door_uuid)
      begin
        metadata = { metadata: { authorization: "Bearer #{auth_token}" } }

        door_stub = ::Entryfy::Org::User::Api::V1::DoorsService::Stub.new($config[ENV['ENTRYFY_ENV']]['orgapi'], $credentials)

        remote_open_request = ::Entryfy::Org::User::Api::V1::RemoteOpenRequest.new(organization_slug: org_slug, door_uuid: door_uuid)

        response = door_stub.remote_open(remote_open_request, metadata)

        puts ::JSON.pretty_generate(::JSON.parse(response.to_json))
      rescue GRPC::Unavailable, GRPC::PermissionDenied, GRPC::InvalidArgument => e
        puts ::JSON.pretty_generate(::JSON.parse(e.debug_error_string))
      rescue ArgumentError => e
        puts "#{e.message} #{e.backtrace.join("\n")}"
      end
    end
  end
end

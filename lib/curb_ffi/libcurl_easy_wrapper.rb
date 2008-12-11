require 'rubygems'
require 'ffi'

module CurbFfi
  module Curl
    module Easy
      extend FFI::Library

      ffi_lib "curl"

      attach_function :global_init, :curl_global_init, [:long], :int
      attach_function :init, :curl_easy_init, [], :pointer
      attach_function :cleanup, :curl_easy_cleanup, [:pointer], :void
      attach_function :setopt, :curl_easy_setopt, [:pointer, :int, :pointer], :int
      attach_function :perform, :curl_easy_perform, [:pointer], :int
      attach_function :strerror, :curl_easy_strerror, [:int], :string
    end
  end
end


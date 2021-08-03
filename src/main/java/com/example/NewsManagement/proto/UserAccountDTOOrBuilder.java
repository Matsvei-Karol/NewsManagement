// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: NewsManagementProto.proto

package com.example.NewsManagement.proto;

public interface UserAccountDTOOrBuilder extends
    // @@protoc_insertion_point(interface_extends:com.example.NewsManagement.proto.UserAccountDTO)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>int64 id = 1;</code>
   * @return The id.
   */
  long getId();

  /**
   * <code>string username = 2;</code>
   * @return The username.
   */
  java.lang.String getUsername();
  /**
   * <code>string username = 2;</code>
   * @return The bytes for username.
   */
  com.google.protobuf.ByteString
      getUsernameBytes();

  /**
   * <code>string password = 3;</code>
   * @return The password.
   */
  java.lang.String getPassword();
  /**
   * <code>string password = 3;</code>
   * @return The bytes for password.
   */
  com.google.protobuf.ByteString
      getPasswordBytes();

  /**
   * <code>.com.example.NewsManagement.proto.RoleDTO roles = 4;</code>
   * @return Whether the roles field is set.
   */
  boolean hasRoles();
  /**
   * <code>.com.example.NewsManagement.proto.RoleDTO roles = 4;</code>
   * @return The roles.
   */
  com.example.NewsManagement.proto.RoleDTO getRoles();
  /**
   * <code>.com.example.NewsManagement.proto.RoleDTO roles = 4;</code>
   */
  com.example.NewsManagement.proto.RoleDTOOrBuilder getRolesOrBuilder();
}

#!/bin/bash

function tear_down() {
  rm -rf application domain infrastructure
}

function test_mkhex_creates_hex_layer_folders() {
  ./src/mkhex

  assert_directory_exists application
  assert_directory_exists domain
  assert_directory_exists infrastructure
}
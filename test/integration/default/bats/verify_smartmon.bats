#!/usr/bin/env bats

@test "it should have smartctl" {
  [ -x "/usr/sbin/smartctl" ]
}

@test "it should have einarc installed in /usr/local/bin" {
  [ -x "/usr/local/bin/einarc" ]
}

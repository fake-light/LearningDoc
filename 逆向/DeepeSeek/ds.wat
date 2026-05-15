(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 f64)))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (func (;0;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 245
                    i32.ge_u
                    if  ;; label = @9
                      local.get 0
                      i32.const -65587
                      i32.ge_u
                      br_if 5 (;@4;)
                      local.get 0
                      i32.const 11
                      i32.add
                      local.tee 1
                      i32.const -8
                      i32.and
                      local.set 5
                      i32.const 1052956
                      i32.load
                      local.tee 8
                      i32.eqz
                      br_if 4 (;@5;)
                      i32.const 31
                      local.set 7
                      i32.const 0
                      local.get 5
                      i32.sub
                      local.set 3
                      local.get 0
                      i32.const 16777204
                      i32.le_u
                      if  ;; label = @10
                        local.get 5
                        i32.const 6
                        local.get 1
                        i32.const 8
                        i32.shr_u
                        i32.clz
                        local.tee 0
                        i32.sub
                        i32.shr_u
                        i32.const 1
                        i32.and
                        local.get 0
                        i32.const 1
                        i32.shl
                        i32.sub
                        i32.const 62
                        i32.add
                        local.set 7
                      end
                      local.get 7
                      i32.const 2
                      i32.shl
                      i32.const 1052544
                      i32.add
                      i32.load
                      local.tee 1
                      i32.eqz
                      if  ;; label = @10
                        i32.const 0
                        local.set 0
                        br 2 (;@8;)
                      end
                      i32.const 0
                      local.set 0
                      local.get 5
                      i32.const 25
                      local.get 7
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      i32.const 0
                      local.get 7
                      i32.const 31
                      i32.ne
                      select
                      i32.shl
                      local.set 4
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.tee 6
                          local.get 5
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 6
                          local.get 5
                          i32.sub
                          local.tee 6
                          local.get 3
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 1
                          local.set 2
                          local.get 6
                          local.tee 3
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 3
                          local.get 1
                          local.set 0
                          br 4 (;@7;)
                        end
                        local.get 1
                        i32.load offset=20
                        local.tee 6
                        local.get 0
                        local.get 6
                        local.get 1
                        local.get 4
                        i32.const 29
                        i32.shr_u
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        i32.load
                        local.tee 1
                        i32.ne
                        select
                        local.get 0
                        local.get 6
                        select
                        local.set 0
                        local.get 4
                        i32.const 1
                        i32.shl
                        local.set 4
                        local.get 1
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    i32.const 1052952
                    i32.load
                    local.tee 4
                    i32.const 16
                    local.get 0
                    i32.const 11
                    i32.add
                    i32.const 504
                    i32.and
                    local.get 0
                    i32.const 11
                    i32.lt_u
                    select
                    local.tee 5
                    i32.const 3
                    i32.shr_u
                    local.tee 0
                    i32.shr_u
                    local.tee 1
                    i32.const 3
                    i32.and
                    if  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const -1
                        i32.xor
                        i32.const 1
                        i32.and
                        local.get 0
                        i32.add
                        local.tee 5
                        i32.const 3
                        i32.shl
                        local.tee 0
                        i32.const 1052688
                        i32.add
                        local.tee 2
                        local.get 0
                        i32.const 1052696
                        i32.add
                        i32.load
                        local.tee 1
                        i32.load offset=8
                        local.tee 3
                        i32.ne
                        if  ;; label = @11
                          local.get 3
                          local.get 2
                          i32.store offset=12
                          local.get 2
                          local.get 3
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        i32.const 1052952
                        local.get 4
                        i32.const -2
                        local.get 5
                        i32.rotl
                        i32.and
                        i32.store
                      end
                      local.get 1
                      local.get 0
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 1
                      i32.add
                      local.tee 0
                      local.get 0
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      br 8 (;@1;)
                    end
                    local.get 5
                    i32.const 1052960
                    i32.load
                    i32.le_u
                    br_if 3 (;@5;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.eqz
                        if  ;; label = @11
                          i32.const 1052956
                          i32.load
                          local.tee 0
                          i32.eqz
                          br_if 6 (;@5;)
                          local.get 0
                          i32.ctz
                          i32.const 2
                          i32.shl
                          i32.const 1052544
                          i32.add
                          i32.load
                          local.tee 2
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 5
                          i32.sub
                          local.set 3
                          local.get 2
                          local.set 1
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 2
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 2
                              i32.load offset=20
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 1
                              i32.load offset=24
                              local.set 7
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  local.get 1
                                  i32.load offset=12
                                  local.tee 0
                                  i32.eq
                                  if  ;; label = @16
                                    local.get 1
                                    i32.const 20
                                    i32.const 16
                                    local.get 1
                                    i32.load offset=20
                                    local.tee 0
                                    select
                                    i32.add
                                    i32.load
                                    local.tee 2
                                    br_if 1 (;@15;)
                                    i32.const 0
                                    local.set 0
                                    br 2 (;@14;)
                                  end
                                  local.get 1
                                  i32.load offset=8
                                  local.tee 2
                                  local.get 0
                                  i32.store offset=12
                                  local.get 0
                                  local.get 2
                                  i32.store offset=8
                                  br 1 (;@14;)
                                end
                                local.get 1
                                i32.const 20
                                i32.add
                                local.get 1
                                i32.const 16
                                i32.add
                                local.get 0
                                select
                                local.set 4
                                loop  ;; label = @15
                                  local.get 4
                                  local.set 6
                                  local.get 2
                                  local.tee 0
                                  i32.const 20
                                  i32.add
                                  local.get 0
                                  i32.const 16
                                  i32.add
                                  local.get 0
                                  i32.load offset=20
                                  local.tee 2
                                  select
                                  local.set 4
                                  local.get 0
                                  i32.const 20
                                  i32.const 16
                                  local.get 2
                                  select
                                  i32.add
                                  i32.load
                                  local.tee 2
                                  br_if 0 (;@15;)
                                end
                                local.get 6
                                i32.const 0
                                i32.store
                              end
                              local.get 7
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 1
                              local.get 1
                              i32.load offset=28
                              i32.const 2
                              i32.shl
                              i32.const 1052544
                              i32.add
                              local.tee 2
                              i32.load
                              i32.ne
                              if  ;; label = @14
                                local.get 7
                                i32.const 16
                                i32.const 20
                                local.get 7
                                i32.load offset=16
                                local.get 1
                                i32.eq
                                select
                                i32.add
                                local.get 0
                                i32.store
                                local.get 0
                                i32.eqz
                                br_if 5 (;@9;)
                                br 4 (;@10;)
                              end
                              local.get 2
                              local.get 0
                              i32.store
                              local.get 0
                              br_if 3 (;@10;)
                              i32.const 1052956
                              i32.const 1052956
                              i32.load
                              i32.const -2
                              local.get 1
                              i32.load offset=28
                              i32.rotl
                              i32.and
                              i32.store
                              br 4 (;@9;)
                            end
                            local.get 0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 5
                            i32.sub
                            local.tee 2
                            local.get 3
                            local.get 2
                            local.get 3
                            i32.lt_u
                            local.tee 2
                            select
                            local.set 3
                            local.get 0
                            local.get 1
                            local.get 2
                            select
                            local.set 1
                            local.get 0
                            local.set 2
                            br 0 (;@12;)
                          end
                          unreachable
                        end
                        block  ;; label = @11
                          i32.const 2
                          local.get 0
                          i32.shl
                          local.tee 2
                          i32.const 0
                          local.get 2
                          i32.sub
                          i32.or
                          local.get 1
                          local.get 0
                          i32.shl
                          i32.and
                          i32.ctz
                          local.tee 6
                          i32.const 3
                          i32.shl
                          local.tee 0
                          i32.const 1052688
                          i32.add
                          local.tee 1
                          local.get 0
                          i32.const 1052696
                          i32.add
                          i32.load
                          local.tee 2
                          i32.load offset=8
                          local.tee 3
                          i32.ne
                          if  ;; label = @12
                            local.get 3
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 3
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          i32.const 1052952
                          local.get 4
                          i32.const -2
                          local.get 6
                          i32.rotl
                          i32.and
                          i32.store
                        end
                        local.get 2
                        local.get 5
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 2
                        local.get 5
                        i32.add
                        local.tee 6
                        local.get 0
                        local.get 5
                        i32.sub
                        local.tee 3
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 2
                        i32.add
                        local.get 3
                        i32.store
                        i32.const 1052960
                        i32.load
                        local.tee 1
                        if  ;; label = @11
                          local.get 1
                          i32.const -8
                          i32.and
                          i32.const 1052688
                          i32.add
                          local.set 0
                          i32.const 1052968
                          i32.load
                          local.set 4
                          block (result i32)  ;; label = @12
                            i32.const 1052952
                            i32.load
                            local.tee 5
                            i32.const 1
                            local.get 1
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 1
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1052952
                              local.get 1
                              local.get 5
                              i32.or
                              i32.store
                              local.get 0
                              br 1 (;@12;)
                            end
                            local.get 0
                            i32.load offset=8
                          end
                          local.set 1
                          local.get 0
                          local.get 4
                          i32.store offset=8
                          local.get 1
                          local.get 4
                          i32.store offset=12
                          local.get 4
                          local.get 0
                          i32.store offset=12
                          local.get 4
                          local.get 1
                          i32.store offset=8
                        end
                        i32.const 1052968
                        local.get 6
                        i32.store
                        i32.const 1052960
                        local.get 3
                        i32.store
                        local.get 2
                        i32.const 8
                        i32.add
                        return
                      end
                      local.get 0
                      local.get 7
                      i32.store offset=24
                      local.get 1
                      i32.load offset=16
                      local.tee 2
                      if  ;; label = @10
                        local.get 0
                        local.get 2
                        i32.store offset=16
                        local.get 2
                        local.get 0
                        i32.store offset=24
                      end
                      local.get 1
                      i32.load offset=20
                      local.tee 2
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 2
                      i32.store offset=20
                      local.get 2
                      local.get 0
                      i32.store offset=24
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 3
                        i32.const 16
                        i32.ge_u
                        if  ;; label = @11
                          local.get 1
                          local.get 5
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 1
                          local.get 5
                          i32.add
                          local.tee 5
                          local.get 3
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 3
                          local.get 5
                          i32.add
                          local.get 3
                          i32.store
                          i32.const 1052960
                          i32.load
                          local.tee 4
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 4
                          i32.const -8
                          i32.and
                          i32.const 1052688
                          i32.add
                          local.set 0
                          i32.const 1052968
                          i32.load
                          local.set 2
                          block (result i32)  ;; label = @12
                            i32.const 1052952
                            i32.load
                            local.tee 6
                            i32.const 1
                            local.get 4
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 4
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1052952
                              local.get 4
                              local.get 6
                              i32.or
                              i32.store
                              local.get 0
                              br 1 (;@12;)
                            end
                            local.get 0
                            i32.load offset=8
                          end
                          local.set 4
                          local.get 0
                          local.get 2
                          i32.store offset=8
                          local.get 4
                          local.get 2
                          i32.store offset=12
                          local.get 2
                          local.get 0
                          i32.store offset=12
                          local.get 2
                          local.get 4
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        local.get 1
                        local.get 3
                        local.get 5
                        i32.add
                        local.tee 0
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 1
                        i32.add
                        local.tee 0
                        local.get 0
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 1 (;@9;)
                      end
                      i32.const 1052968
                      local.get 5
                      i32.store
                      i32.const 1052960
                      local.get 3
                      i32.store
                    end
                    br 7 (;@1;)
                  end
                  local.get 0
                  local.get 2
                  i32.or
                  i32.eqz
                  if  ;; label = @8
                    i32.const 0
                    local.set 2
                    i32.const 2
                    local.get 7
                    i32.shl
                    local.tee 0
                    i32.const 0
                    local.get 0
                    i32.sub
                    i32.or
                    local.get 8
                    i32.and
                    local.tee 0
                    i32.eqz
                    br_if 3 (;@5;)
                    local.get 0
                    i32.ctz
                    i32.const 2
                    i32.shl
                    i32.const 1052544
                    i32.add
                    i32.load
                    local.set 0
                  end
                  local.get 0
                  i32.eqz
                  br_if 1 (;@6;)
                end
                loop  ;; label = @7
                  local.get 0
                  local.get 2
                  local.get 0
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.tee 4
                  local.get 5
                  i32.sub
                  local.tee 6
                  local.get 3
                  i32.lt_u
                  local.tee 7
                  select
                  local.set 8
                  local.get 0
                  i32.load offset=16
                  local.tee 1
                  i32.eqz
                  if  ;; label = @8
                    local.get 0
                    i32.load offset=20
                    local.set 1
                  end
                  local.get 2
                  local.get 8
                  local.get 4
                  local.get 5
                  i32.lt_u
                  local.tee 0
                  select
                  local.set 2
                  local.get 3
                  local.get 6
                  local.get 3
                  local.get 7
                  select
                  local.get 0
                  select
                  local.set 3
                  local.get 1
                  local.tee 0
                  br_if 0 (;@7;)
                end
              end
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.const 1052960
              i32.load
              local.tee 0
              i32.le_u
              local.get 3
              local.get 0
              local.get 5
              i32.sub
              i32.ge_u
              i32.and
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=24
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 2
                  i32.load offset=12
                  local.tee 0
                  i32.eq
                  if  ;; label = @8
                    local.get 2
                    i32.const 20
                    i32.const 16
                    local.get 2
                    i32.load offset=20
                    local.tee 0
                    select
                    i32.add
                    i32.load
                    local.tee 1
                    br_if 1 (;@7;)
                    i32.const 0
                    local.set 0
                    br 2 (;@6;)
                  end
                  local.get 2
                  i32.load offset=8
                  local.tee 1
                  local.get 0
                  i32.store offset=12
                  local.get 0
                  local.get 1
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 2
                i32.const 20
                i32.add
                local.get 2
                i32.const 16
                i32.add
                local.get 0
                select
                local.set 4
                loop  ;; label = @7
                  local.get 4
                  local.set 6
                  local.get 1
                  local.tee 0
                  i32.const 20
                  i32.add
                  local.get 0
                  i32.const 16
                  i32.add
                  local.get 0
                  i32.load offset=20
                  local.tee 1
                  select
                  local.set 4
                  local.get 0
                  i32.const 20
                  i32.const 16
                  local.get 1
                  select
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 0 (;@7;)
                end
                local.get 6
                i32.const 0
                i32.store
              end
              local.get 7
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              local.get 2
              i32.load offset=28
              i32.const 2
              i32.shl
              i32.const 1052544
              i32.add
              local.tee 1
              i32.load
              i32.ne
              if  ;; label = @6
                local.get 7
                i32.const 16
                i32.const 20
                local.get 7
                i32.load offset=16
                local.get 2
                i32.eq
                select
                i32.add
                local.get 0
                i32.store
                local.get 0
                i32.eqz
                br_if 4 (;@2;)
                br 3 (;@3;)
              end
              local.get 1
              local.get 0
              i32.store
              local.get 0
              br_if 2 (;@3;)
              i32.const 1052956
              i32.const 1052956
              i32.load
              i32.const -2
              local.get 2
              i32.load offset=28
              i32.rotl
              i32.and
              i32.store
              br 3 (;@2;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.const 1052960
                    i32.load
                    local.tee 1
                    i32.gt_u
                    if  ;; label = @9
                      local.get 5
                      i32.const 1052964
                      i32.load
                      local.tee 0
                      i32.ge_u
                      if  ;; label = @10
                        i32.const 0
                        local.set 3
                        local.get 5
                        i32.const 65583
                        i32.add
                        local.tee 0
                        i32.const 16
                        i32.shr_u
                        memory.grow
                        local.tee 1
                        i32.const -1
                        i32.eq
                        local.tee 2
                        br_if 6 (;@4;)
                        local.get 1
                        i32.const 16
                        i32.shl
                        local.tee 1
                        i32.eqz
                        br_if 6 (;@4;)
                        i32.const 1052976
                        i32.const 0
                        local.get 0
                        i32.const -65536
                        i32.and
                        local.get 2
                        select
                        local.tee 3
                        i32.const 1052976
                        i32.load
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1052980
                        i32.const 1052980
                        i32.load
                        local.tee 2
                        local.get 0
                        local.get 0
                        local.get 2
                        i32.lt_u
                        select
                        i32.store
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 1052972
                            i32.load
                            local.tee 2
                            if  ;; label = @13
                              i32.const 1052672
                              local.set 0
                              loop  ;; label = @14
                                local.get 0
                                i32.load
                                local.tee 4
                                local.get 0
                                i32.load offset=4
                                local.tee 6
                                i32.add
                                local.get 1
                                i32.eq
                                br_if 2 (;@12;)
                                local.get 0
                                i32.load offset=8
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                              br 2 (;@11;)
                            end
                            i32.const 1052988
                            i32.load
                            local.tee 0
                            i32.const 0
                            local.get 0
                            local.get 1
                            i32.le_u
                            select
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1052988
                              local.get 1
                              i32.store
                            end
                            i32.const 1052992
                            i32.const 4095
                            i32.store
                            i32.const 1052676
                            local.get 3
                            i32.store
                            i32.const 1052672
                            local.get 1
                            i32.store
                            i32.const 1052700
                            i32.const 1052688
                            i32.store
                            i32.const 1052708
                            i32.const 1052696
                            i32.store
                            i32.const 1052696
                            i32.const 1052688
                            i32.store
                            i32.const 1052716
                            i32.const 1052704
                            i32.store
                            i32.const 1052704
                            i32.const 1052696
                            i32.store
                            i32.const 1052724
                            i32.const 1052712
                            i32.store
                            i32.const 1052712
                            i32.const 1052704
                            i32.store
                            i32.const 1052732
                            i32.const 1052720
                            i32.store
                            i32.const 1052720
                            i32.const 1052712
                            i32.store
                            i32.const 1052740
                            i32.const 1052728
                            i32.store
                            i32.const 1052728
                            i32.const 1052720
                            i32.store
                            i32.const 1052748
                            i32.const 1052736
                            i32.store
                            i32.const 1052736
                            i32.const 1052728
                            i32.store
                            i32.const 1052756
                            i32.const 1052744
                            i32.store
                            i32.const 1052744
                            i32.const 1052736
                            i32.store
                            i32.const 1052684
                            i32.const 0
                            i32.store
                            i32.const 1052764
                            i32.const 1052752
                            i32.store
                            i32.const 1052752
                            i32.const 1052744
                            i32.store
                            i32.const 1052760
                            i32.const 1052752
                            i32.store
                            i32.const 1052772
                            i32.const 1052760
                            i32.store
                            i32.const 1052768
                            i32.const 1052760
                            i32.store
                            i32.const 1052780
                            i32.const 1052768
                            i32.store
                            i32.const 1052776
                            i32.const 1052768
                            i32.store
                            i32.const 1052788
                            i32.const 1052776
                            i32.store
                            i32.const 1052784
                            i32.const 1052776
                            i32.store
                            i32.const 1052796
                            i32.const 1052784
                            i32.store
                            i32.const 1052792
                            i32.const 1052784
                            i32.store
                            i32.const 1052804
                            i32.const 1052792
                            i32.store
                            i32.const 1052800
                            i32.const 1052792
                            i32.store
                            i32.const 1052812
                            i32.const 1052800
                            i32.store
                            i32.const 1052808
                            i32.const 1052800
                            i32.store
                            i32.const 1052820
                            i32.const 1052808
                            i32.store
                            i32.const 1052816
                            i32.const 1052808
                            i32.store
                            i32.const 1052828
                            i32.const 1052816
                            i32.store
                            i32.const 1052836
                            i32.const 1052824
                            i32.store
                            i32.const 1052824
                            i32.const 1052816
                            i32.store
                            i32.const 1052844
                            i32.const 1052832
                            i32.store
                            i32.const 1052832
                            i32.const 1052824
                            i32.store
                            i32.const 1052852
                            i32.const 1052840
                            i32.store
                            i32.const 1052840
                            i32.const 1052832
                            i32.store
                            i32.const 1052860
                            i32.const 1052848
                            i32.store
                            i32.const 1052848
                            i32.const 1052840
                            i32.store
                            i32.const 1052868
                            i32.const 1052856
                            i32.store
                            i32.const 1052856
                            i32.const 1052848
                            i32.store
                            i32.const 1052876
                            i32.const 1052864
                            i32.store
                            i32.const 1052864
                            i32.const 1052856
                            i32.store
                            i32.const 1052884
                            i32.const 1052872
                            i32.store
                            i32.const 1052872
                            i32.const 1052864
                            i32.store
                            i32.const 1052892
                            i32.const 1052880
                            i32.store
                            i32.const 1052880
                            i32.const 1052872
                            i32.store
                            i32.const 1052900
                            i32.const 1052888
                            i32.store
                            i32.const 1052888
                            i32.const 1052880
                            i32.store
                            i32.const 1052908
                            i32.const 1052896
                            i32.store
                            i32.const 1052896
                            i32.const 1052888
                            i32.store
                            i32.const 1052916
                            i32.const 1052904
                            i32.store
                            i32.const 1052904
                            i32.const 1052896
                            i32.store
                            i32.const 1052924
                            i32.const 1052912
                            i32.store
                            i32.const 1052912
                            i32.const 1052904
                            i32.store
                            i32.const 1052932
                            i32.const 1052920
                            i32.store
                            i32.const 1052920
                            i32.const 1052912
                            i32.store
                            i32.const 1052940
                            i32.const 1052928
                            i32.store
                            i32.const 1052928
                            i32.const 1052920
                            i32.store
                            i32.const 1052948
                            i32.const 1052936
                            i32.store
                            i32.const 1052936
                            i32.const 1052928
                            i32.store
                            i32.const 1052972
                            local.get 1
                            i32.store
                            i32.const 1052944
                            i32.const 1052936
                            i32.store
                            i32.const 1052964
                            local.get 3
                            i32.const 40
                            i32.sub
                            local.tee 0
                            i32.store
                            local.get 1
                            local.get 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 1
                            i32.add
                            i32.const 40
                            i32.store offset=4
                            i32.const 1052984
                            i32.const 2097152
                            i32.store
                            br 7 (;@5;)
                          end
                          local.get 2
                          local.get 4
                          i32.lt_u
                          local.get 1
                          local.get 2
                          i32.le_u
                          i32.or
                          br_if 0 (;@11;)
                          local.get 0
                          i32.load offset=12
                          i32.eqz
                          br_if 3 (;@8;)
                        end
                        i32.const 1052988
                        i32.const 1052988
                        i32.load
                        local.tee 0
                        local.get 1
                        local.get 0
                        local.get 1
                        i32.lt_u
                        select
                        i32.store
                        local.get 1
                        local.get 3
                        i32.add
                        local.set 4
                        i32.const 1052672
                        local.set 0
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 4
                              local.get 0
                              i32.load
                              local.tee 6
                              i32.ne
                              if  ;; label = @14
                                local.get 0
                                i32.load offset=8
                                local.tee 0
                                br_if 1 (;@13;)
                                br 2 (;@12;)
                              end
                            end
                            local.get 0
                            i32.load offset=12
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          i32.const 1052672
                          local.set 0
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 2
                              local.get 0
                              i32.load
                              local.tee 4
                              i32.ge_u
                              if  ;; label = @14
                                local.get 2
                                local.get 4
                                local.get 0
                                i32.load offset=4
                                i32.add
                                local.tee 6
                                i32.lt_u
                                br_if 1 (;@13;)
                              end
                              local.get 0
                              i32.load offset=8
                              local.set 0
                              br 1 (;@12;)
                            end
                          end
                          i32.const 1052972
                          local.get 1
                          i32.store
                          i32.const 1052964
                          local.get 3
                          i32.const 40
                          i32.sub
                          local.tee 0
                          i32.store
                          local.get 1
                          local.get 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 1
                          i32.add
                          i32.const 40
                          i32.store offset=4
                          i32.const 1052984
                          i32.const 2097152
                          i32.store
                          local.get 2
                          local.get 6
                          i32.const 32
                          i32.sub
                          i32.const -8
                          i32.and
                          i32.const 8
                          i32.sub
                          local.tee 0
                          local.get 0
                          local.get 2
                          i32.const 16
                          i32.add
                          i32.lt_u
                          select
                          local.tee 4
                          i32.const 27
                          i32.store offset=4
                          i32.const 1052672
                          i64.load align=4
                          local.set 9
                          local.get 4
                          i32.const 16
                          i32.add
                          i32.const 1052680
                          i64.load align=4
                          i64.store align=4
                          local.get 4
                          local.get 9
                          i64.store offset=8 align=4
                          i32.const 1052676
                          local.get 3
                          i32.store
                          i32.const 1052672
                          local.get 1
                          i32.store
                          i32.const 1052680
                          local.get 4
                          i32.const 8
                          i32.add
                          i32.store
                          i32.const 1052684
                          i32.const 0
                          i32.store
                          local.get 4
                          i32.const 28
                          i32.add
                          local.set 0
                          loop  ;; label = @12
                            local.get 0
                            i32.const 7
                            i32.store
                            local.get 0
                            i32.const 4
                            i32.add
                            local.tee 0
                            local.get 6
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          local.get 2
                          local.get 4
                          i32.eq
                          br_if 6 (;@5;)
                          local.get 4
                          local.get 4
                          i32.load offset=4
                          i32.const -2
                          i32.and
                          i32.store offset=4
                          local.get 2
                          local.get 4
                          local.get 2
                          i32.sub
                          local.tee 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 4
                          local.get 0
                          i32.store
                          local.get 0
                          i32.const 256
                          i32.ge_u
                          if  ;; label = @12
                            local.get 2
                            local.get 0
                            call 16
                            br 7 (;@5;)
                          end
                          local.get 0
                          i32.const 248
                          i32.and
                          i32.const 1052688
                          i32.add
                          local.set 1
                          block (result i32)  ;; label = @12
                            i32.const 1052952
                            i32.load
                            local.tee 4
                            i32.const 1
                            local.get 0
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 0
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1052952
                              local.get 0
                              local.get 4
                              i32.or
                              i32.store
                              local.get 1
                              br 1 (;@12;)
                            end
                            local.get 1
                            i32.load offset=8
                          end
                          local.set 0
                          local.get 1
                          local.get 2
                          i32.store offset=8
                          local.get 0
                          local.get 2
                          i32.store offset=12
                          local.get 2
                          local.get 1
                          i32.store offset=12
                          local.get 2
                          local.get 0
                          i32.store offset=8
                          br 6 (;@5;)
                        end
                        local.get 0
                        local.get 1
                        i32.store
                        local.get 0
                        local.get 0
                        i32.load offset=4
                        local.get 3
                        i32.add
                        i32.store offset=4
                        local.get 1
                        local.get 5
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 6
                        i32.const 15
                        i32.add
                        i32.const -8
                        i32.and
                        i32.const 8
                        i32.sub
                        local.tee 3
                        local.get 1
                        local.get 5
                        i32.add
                        local.tee 4
                        i32.sub
                        local.set 5
                        local.get 3
                        i32.const 1052972
                        i32.load
                        i32.eq
                        br_if 3 (;@7;)
                        local.get 3
                        i32.const 1052968
                        i32.load
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 3
                        i32.load offset=4
                        local.tee 2
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.eq
                        if  ;; label = @11
                          local.get 3
                          local.get 2
                          i32.const -8
                          i32.and
                          local.tee 0
                          call 11
                          local.get 0
                          local.get 5
                          i32.add
                          local.set 5
                          local.get 0
                          local.get 3
                          i32.add
                          local.tee 3
                          i32.load offset=4
                          local.set 2
                        end
                        local.get 3
                        local.get 2
                        i32.const -2
                        i32.and
                        i32.store offset=4
                        local.get 4
                        local.get 5
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 4
                        local.get 5
                        i32.add
                        local.get 5
                        i32.store
                        local.get 5
                        i32.const 256
                        i32.ge_u
                        if  ;; label = @11
                          local.get 4
                          local.get 5
                          call 16
                          br 10 (;@1;)
                        end
                        local.get 5
                        i32.const 248
                        i32.and
                        i32.const 1052688
                        i32.add
                        local.set 0
                        block (result i32)  ;; label = @11
                          i32.const 1052952
                          i32.load
                          local.tee 2
                          i32.const 1
                          local.get 5
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 3
                          i32.and
                          i32.eqz
                          if  ;; label = @12
                            i32.const 1052952
                            local.get 2
                            local.get 3
                            i32.or
                            i32.store
                            local.get 0
                            br 1 (;@11;)
                          end
                          local.get 0
                          i32.load offset=8
                        end
                        local.set 5
                        local.get 0
                        local.get 4
                        i32.store offset=8
                        local.get 5
                        local.get 4
                        i32.store offset=12
                        local.get 4
                        local.get 0
                        i32.store offset=12
                        local.get 4
                        local.get 5
                        i32.store offset=8
                        br 9 (;@1;)
                      end
                      i32.const 1052964
                      local.get 0
                      local.get 5
                      i32.sub
                      local.tee 1
                      i32.store
                      i32.const 1052972
                      i32.const 1052972
                      i32.load
                      local.tee 0
                      local.get 5
                      i32.add
                      local.tee 2
                      i32.store
                      local.get 2
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 5
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 3
                      br 5 (;@4;)
                    end
                    i32.const 1052968
                    i32.load
                    local.set 0
                    block  ;; label = @9
                      local.get 1
                      local.get 5
                      i32.sub
                      local.tee 2
                      i32.const 15
                      i32.le_u
                      if  ;; label = @10
                        i32.const 1052968
                        i32.const 0
                        i32.store
                        i32.const 1052960
                        i32.const 0
                        i32.store
                        local.get 0
                        local.get 1
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 1
                        i32.add
                        local.tee 1
                        local.get 1
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 1 (;@9;)
                      end
                      i32.const 1052960
                      local.get 2
                      i32.store
                      i32.const 1052968
                      local.get 0
                      local.get 5
                      i32.add
                      local.tee 4
                      i32.store
                      local.get 4
                      local.get 2
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 1
                      i32.add
                      local.get 2
                      i32.store
                      local.get 0
                      local.get 5
                      i32.const 3
                      i32.or
                      i32.store offset=4
                    end
                    local.get 0
                    i32.const 8
                    i32.add
                    return
                  end
                  local.get 0
                  local.get 3
                  local.get 6
                  i32.add
                  i32.store offset=4
                  i32.const 1052972
                  i32.const 1052972
                  i32.load
                  local.tee 0
                  i32.const 15
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.sub
                  local.tee 2
                  i32.store
                  i32.const 1052964
                  i32.const 1052964
                  i32.load
                  local.get 3
                  i32.add
                  local.tee 4
                  local.get 0
                  local.get 1
                  i32.sub
                  i32.add
                  i32.const 8
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 2
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 4
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 1052984
                  i32.const 2097152
                  i32.store
                  br 2 (;@5;)
                end
                i32.const 1052972
                local.get 4
                i32.store
                i32.const 1052964
                i32.const 1052964
                i32.load
                local.get 5
                i32.add
                local.tee 0
                i32.store
                local.get 4
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                br 5 (;@1;)
              end
              i32.const 1052968
              local.get 4
              i32.store
              i32.const 1052960
              i32.const 1052960
              i32.load
              local.get 5
              i32.add
              local.tee 0
              i32.store
              local.get 4
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 4
              i32.add
              local.get 0
              i32.store
              br 4 (;@1;)
            end
            i32.const 0
            local.set 3
            i32.const 1052964
            i32.load
            local.tee 0
            local.get 5
            i32.le_u
            br_if 0 (;@4;)
            i32.const 1052964
            local.get 0
            local.get 5
            i32.sub
            local.tee 1
            i32.store
            i32.const 1052972
            i32.const 1052972
            i32.load
            local.tee 0
            local.get 5
            i32.add
            local.tee 2
            i32.store
            local.get 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 5
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            return
          end
          local.get 3
          return
        end
        local.get 0
        local.get 7
        i32.store offset=24
        local.get 2
        i32.load offset=16
        local.tee 1
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 0
          i32.store offset=24
        end
        local.get 2
        i32.load offset=20
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 1
        local.get 0
        i32.store offset=24
      end
      block  ;; label = @2
        local.get 3
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          local.get 2
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 2
          local.get 5
          i32.add
          local.tee 1
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 3
          i32.add
          local.get 3
          i32.store
          local.get 3
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 1
            local.get 3
            call 16
            br 2 (;@2;)
          end
          local.get 3
          i32.const 248
          i32.and
          i32.const 1052688
          i32.add
          local.set 0
          block (result i32)  ;; label = @4
            i32.const 1052952
            i32.load
            local.tee 4
            i32.const 1
            local.get 3
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 3
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 1052952
              local.get 3
              local.get 4
              i32.or
              i32.store
              local.get 0
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=8
          end
          local.set 3
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 3
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 1
          local.get 3
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 2
        local.get 3
        local.get 5
        i32.add
        local.tee 0
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.tee 0
        local.get 0
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
      end
      local.get 2
      i32.const 8
      i32.add
      return
    end
    local.get 1
    i32.const 8
    i32.add)
  (func (;1;) (type 9) (param i32 i32 i32 i32 i32 f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 f64)
    global.get 0
    i32.const 1168
    i32.sub
    local.tee 6
    global.set 0
    i32.const 1
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            f64.ceil
            local.get 5
            f64.ne
            local.get 5
            f64.const 0x0p+0 (;=0;)
            f64.le
            i32.or
            local.get 5
            i64.reinterpret_f64
            i64.const 9223372036854775807
            i64.and
            i64.const 9218868437227405311
            i64.gt_u
            local.get 5
            f64.const 0x1.fffffffffffffp+52 (;=9.0072e+15;)
            f64.ge
            i32.or
            i32.or
            br_if 0 (;@4;)
            local.get 6
            i32.const 8
            i32.add
            i32.const 200
            call 21
            local.get 6
            i32.const 0
            i32.store8 offset=343
            block (result i64)  ;; label = @5
              local.get 5
              f64.const 0x0p+0 (;=0;)
              f64.ge
              local.tee 13
              local.get 5
              f64.const 0x1p+64 (;=1.84467e+19;)
              f64.lt
              i32.and
              if  ;; label = @6
                local.get 5
                i64.trunc_f64_u
                br 1 (;@5;)
              end
              i64.const 0
            end
            local.set 21
            local.get 6
            i32.const 208
            i32.add
            local.set 16
            block  ;; label = @5
              local.get 4
              i32.const 135
              i32.le_u
              if  ;; label = @6
                local.get 16
                local.get 3
                local.get 4
                call 13
                drop
                local.get 6
                local.get 4
                i32.store8 offset=343
                br 1 (;@5;)
              end
              local.get 6
              i32.const 8
              i32.add
              local.get 3
              local.get 4
              i32.const 136
              i32.div_u
              local.tee 8
              call 18
              local.get 6
              local.get 4
              local.get 8
              i32.const 136
              i32.mul
              local.tee 8
              i32.sub
              local.tee 11
              i32.store8 offset=343
              local.get 16
              local.get 3
              local.get 8
              i32.add
              local.get 11
              call 13
              drop
            end
            local.get 2
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.eqz
                if  ;; label = @7
                  i64.const 1
                  local.set 20
                  br 1 (;@6;)
                end
                i32.const 0
                local.set 7
                i32.const 1053001
                i32.load8_u
                drop
                local.get 2
                i32.const 1
                i32.shr_u
                local.tee 8
                call 0
                local.tee 11
                if  ;; label = @7
                  local.get 6
                  i32.const 0
                  i32.store offset=688
                  local.get 6
                  local.get 11
                  i32.store offset=684
                  local.get 6
                  local.get 8
                  i32.store offset=680
                  local.get 2
                  i32.const 2
                  i32.sub
                  local.set 12
                  block  ;; label = @8
                    loop  ;; label = @9
                      i32.const 0
                      local.set 10
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 7
                              i32.const 2
                              i32.add
                              local.tee 8
                              br_table 2 (;@11;) 0 (;@13;) 1 (;@12;) 0 (;@13;)
                            end
                            local.get 1
                            local.get 7
                            i32.add
                            i32.load8_s
                            i32.const -65
                            i32.le_s
                            br_if 9 (;@3;)
                            local.get 7
                            i32.const -2
                            i32.eq
                            br_if 2 (;@10;)
                          end
                          local.get 2
                          local.get 8
                          i32.gt_u
                          if  ;; label = @12
                            local.get 1
                            local.get 7
                            i32.add
                            i32.const 2
                            i32.add
                            i32.load8_s
                            i32.const -65
                            i32.gt_s
                            br_if 2 (;@10;)
                            br 9 (;@3;)
                          end
                          local.get 7
                          local.get 12
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 7
                          i32.const 2
                          i32.add
                          local.set 10
                        end
                        local.get 1
                        local.get 2
                        local.get 7
                        local.get 10
                        call 39
                        unreachable
                      end
                      local.get 1
                      local.get 7
                      local.get 1
                      local.get 7
                      i32.add
                      i32.load8_u
                      i32.const 43
                      i32.eq
                      local.tee 10
                      i32.add
                      i32.add
                      local.tee 14
                      i32.load8_u
                      local.tee 15
                      i32.const 48
                      i32.sub
                      local.tee 7
                      i32.const 10
                      i32.ge_u
                      if  ;; label = @10
                        i32.const -1
                        local.get 15
                        i32.const 32
                        i32.or
                        local.tee 7
                        i32.const 87
                        i32.sub
                        local.tee 15
                        local.get 15
                        local.get 7
                        i32.const 97
                        i32.sub
                        i32.lt_u
                        select
                        local.tee 7
                        i32.const 15
                        i32.gt_u
                        br_if 2 (;@8;)
                      end
                      local.get 10
                      i32.eqz
                      if  ;; label = @10
                        local.get 14
                        i32.const 1
                        i32.add
                        i32.load8_u
                        local.tee 14
                        i32.const 48
                        i32.sub
                        local.tee 10
                        i32.const 10
                        i32.ge_u
                        if  ;; label = @11
                          i32.const -1
                          local.get 14
                          i32.const 32
                          i32.or
                          local.tee 10
                          i32.const 87
                          i32.sub
                          local.tee 14
                          local.get 14
                          local.get 10
                          i32.const 97
                          i32.sub
                          i32.lt_u
                          select
                          local.tee 10
                          i32.const 15
                          i32.gt_u
                          br_if 3 (;@8;)
                        end
                        local.get 7
                        i32.const 4
                        i32.shl
                        local.get 10
                        i32.or
                        local.set 7
                      end
                      local.get 6
                      i32.load offset=680
                      local.get 9
                      i32.eq
                      if  ;; label = @10
                        local.get 6
                        i32.const 680
                        i32.add
                        call 20
                        local.get 6
                        i32.load offset=684
                        local.set 11
                      end
                      local.get 9
                      local.get 11
                      i32.add
                      local.get 7
                      i32.store8
                      local.get 6
                      local.get 9
                      i32.const 1
                      i32.add
                      local.tee 9
                      i32.store offset=688
                      local.get 8
                      local.tee 7
                      local.get 2
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 6
                    i32.load offset=680
                    local.tee 10
                    i32.const -2147483648
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 6
                    i64.load offset=684 align=4
                    local.set 20
                    br 2 (;@6;)
                  end
                  local.get 6
                  i32.load offset=680
                  local.tee 7
                  i32.eqz
                  br_if 2 (;@5;)
                  block  ;; label = @8
                    local.get 6
                    i32.load offset=684
                    local.tee 8
                    i32.const 4
                    i32.sub
                    i32.load
                    local.tee 9
                    i32.const -8
                    i32.and
                    local.tee 10
                    i32.const 4
                    i32.const 8
                    local.get 9
                    i32.const 3
                    i32.and
                    local.tee 9
                    select
                    local.get 7
                    i32.add
                    i32.ge_u
                    if  ;; label = @9
                      local.get 9
                      i32.const 0
                      local.get 10
                      local.get 7
                      i32.const 39
                      i32.add
                      i32.gt_u
                      select
                      br_if 1 (;@8;)
                      local.get 8
                      call 5
                      br 4 (;@5;)
                    end
                    br 6 (;@2;)
                  end
                  br 6 (;@1;)
                end
                unreachable
              end
              local.get 20
              i32.wrap_i64
              local.set 8
              block  ;; label = @6
                i64.const -1
                local.get 21
                i64.const 0
                local.get 13
                select
                local.get 5
                f64.const 0x1.fffffffffffffp+63 (;=1.84467e+19;)
                f64.gt
                select
                local.tee 23
                i64.eqz
                br_if 0 (;@6;)
                local.get 20
                i64.const -4294967296
                i64.and
                local.set 24
                local.get 6
                i32.const 880
                i32.add
                local.set 15
                local.get 6
                i32.const 544
                i32.add
                local.set 17
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 6
                    i32.const 344
                    i32.add
                    local.get 6
                    i32.const 8
                    i32.add
                    i32.const 200
                    call 13
                    drop
                    local.get 17
                    local.get 16
                    i32.const 136
                    call 13
                    local.set 13
                    local.get 6
                    i32.const 0
                    i32.store offset=1028
                    local.get 6
                    i64.const 4294967296
                    i64.store offset=1020 align=4
                    local.get 6
                    i32.const 3
                    i32.store8 offset=712
                    local.get 6
                    i32.const 32
                    i32.store offset=696
                    local.get 6
                    i32.const 0
                    i32.store offset=708
                    local.get 6
                    i32.const 1048584
                    i32.store offset=704
                    local.get 6
                    i32.const 0
                    i32.store offset=688
                    local.get 6
                    i32.const 0
                    i32.store offset=680
                    local.get 6
                    local.get 6
                    i32.const 1020
                    i32.add
                    i32.store offset=700
                    i32.const 20
                    local.set 7
                    local.get 22
                    local.tee 20
                    i64.const 10000
                    i64.ge_u
                    if  ;; label = @9
                      local.get 20
                      local.set 21
                      loop  ;; label = @10
                        local.get 6
                        i32.const 1032
                        i32.add
                        local.get 7
                        i32.add
                        local.tee 9
                        i32.const 4
                        i32.sub
                        local.get 21
                        i64.const 10000
                        i64.div_u
                        local.tee 20
                        i64.const 55536
                        i64.mul
                        local.get 21
                        i64.add
                        i32.wrap_i64
                        local.tee 11
                        i32.const 65535
                        i32.and
                        i32.const 100
                        i32.div_u
                        local.tee 12
                        i32.const 1
                        i32.shl
                        i32.const 1049090
                        i32.add
                        i32.load16_u align=1
                        i32.store16 align=1
                        local.get 9
                        i32.const 2
                        i32.sub
                        local.get 12
                        i32.const -100
                        i32.mul
                        local.get 11
                        i32.add
                        i32.const 65535
                        i32.and
                        i32.const 1
                        i32.shl
                        i32.const 1049090
                        i32.add
                        i32.load16_u align=1
                        i32.store16 align=1
                        local.get 7
                        i32.const 4
                        i32.sub
                        local.set 7
                        local.get 21
                        i64.const 99999999
                        i64.gt_u
                        local.get 20
                        local.set 21
                        br_if 0 (;@10;)
                      end
                    end
                    block  ;; label = @9
                      local.get 20
                      i64.const 99
                      i64.le_u
                      if  ;; label = @10
                        local.get 20
                        i32.wrap_i64
                        local.set 9
                        br 1 (;@9;)
                      end
                      local.get 7
                      i32.const 2
                      i32.sub
                      local.tee 7
                      local.get 6
                      i32.const 1032
                      i32.add
                      i32.add
                      local.get 20
                      i32.wrap_i64
                      local.tee 11
                      i32.const 65535
                      i32.and
                      i32.const 100
                      i32.div_u
                      local.tee 9
                      i32.const -100
                      i32.mul
                      local.get 11
                      i32.add
                      i32.const 65535
                      i32.and
                      i32.const 1
                      i32.shl
                      i32.const 1049090
                      i32.add
                      i32.load16_u align=1
                      i32.store16 align=1
                    end
                    block  ;; label = @9
                      local.get 9
                      i32.const 10
                      i32.ge_u
                      if  ;; label = @10
                        local.get 7
                        i32.const 2
                        i32.sub
                        local.tee 7
                        local.get 6
                        i32.const 1032
                        i32.add
                        i32.add
                        local.get 9
                        i32.const 1
                        i32.shl
                        i32.const 1049090
                        i32.add
                        i32.load16_u align=1
                        i32.store16 align=1
                        br 1 (;@9;)
                      end
                      local.get 7
                      i32.const 1
                      i32.sub
                      local.tee 7
                      local.get 6
                      i32.const 1032
                      i32.add
                      i32.add
                      local.get 9
                      i32.const 48
                      i32.or
                      i32.store8
                    end
                    block  ;; label = @9
                      block (result i32)  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 6
                            i32.const 680
                            i32.add
                            i32.const 1
                            i32.const 0
                            local.get 6
                            i32.const 1032
                            i32.add
                            local.get 7
                            i32.add
                            i32.const 20
                            local.get 7
                            i32.sub
                            call 9
                            i32.eqz
                            if  ;; label = @13
                              local.get 6
                              i32.load offset=1024
                              local.set 9
                              local.get 6
                              i32.load offset=1020
                              local.set 11
                              local.get 6
                              i32.load offset=1028
                              local.tee 7
                              i32.const 136
                              local.get 6
                              i32.load8_u offset=679
                              local.tee 12
                              i32.sub
                              local.tee 14
                              i32.lt_u
                              br_if 1 (;@12;)
                              local.get 12
                              br_if 2 (;@11;)
                              local.get 9
                              br 3 (;@10;)
                            end
                            global.get 0
                            i32.const -64
                            i32.add
                            local.tee 0
                            global.set 0
                            local.get 0
                            i32.const 55
                            i32.store offset=12
                            local.get 0
                            i32.const 1048660
                            i32.store offset=8
                            local.get 0
                            i32.const 1048644
                            i32.store offset=20
                            local.get 0
                            local.get 6
                            i32.const 1032
                            i32.add
                            i32.store offset=16
                            local.get 0
                            i32.const 2
                            i32.store offset=28
                            local.get 0
                            i32.const 1049036
                            i32.store offset=24
                            local.get 0
                            i64.const 2
                            i64.store offset=36 align=4
                            local.get 0
                            local.get 0
                            i32.const 16
                            i32.add
                            i64.extend_i32_u
                            i64.const 4294967296
                            i64.or
                            i64.store offset=56
                            local.get 0
                            local.get 0
                            i32.const 8
                            i32.add
                            i64.extend_i32_u
                            i64.const 8589934592
                            i64.or
                            i64.store offset=48
                            local.get 0
                            local.get 0
                            i32.const 48
                            i32.add
                            i32.store offset=32
                            local.get 0
                            i32.const 24
                            i32.add
                            i32.const 1048824
                            call 36
                            unreachable
                          end
                          local.get 12
                          local.get 13
                          i32.add
                          local.get 9
                          local.get 7
                          call 13
                          drop
                          local.get 6
                          local.get 7
                          local.get 12
                          i32.add
                          i32.store8 offset=679
                          br 2 (;@9;)
                        end
                        local.get 12
                        local.get 13
                        i32.add
                        local.get 9
                        local.get 14
                        call 13
                        drop
                        local.get 6
                        i32.const 344
                        i32.add
                        local.get 13
                        i32.const 1
                        call 18
                        local.get 7
                        local.get 14
                        i32.sub
                        local.set 7
                        local.get 9
                        local.get 14
                        i32.add
                      end
                      local.set 12
                      local.get 12
                      local.get 7
                      i32.const 136
                      i32.div_u
                      local.tee 14
                      i32.const 136
                      i32.mul
                      local.tee 18
                      i32.add
                      local.set 19
                      local.get 7
                      i32.const 136
                      i32.ge_u
                      if  ;; label = @10
                        local.get 6
                        i32.const 344
                        i32.add
                        local.get 12
                        local.get 14
                        call 18
                      end
                      local.get 6
                      local.get 7
                      local.get 18
                      i32.sub
                      local.tee 7
                      i32.store8 offset=679
                      local.get 13
                      local.get 19
                      local.get 7
                      call 13
                      drop
                    end
                    local.get 6
                    i32.const 680
                    i32.add
                    local.tee 12
                    local.get 6
                    i32.const 344
                    i32.add
                    i32.const 336
                    call 13
                    drop
                    local.get 6
                    i32.load8_u offset=1015
                    local.set 7
                    local.get 6
                    i32.const 1032
                    i32.add
                    local.tee 13
                    i32.const 136
                    call 21
                    local.get 13
                    local.get 15
                    local.get 7
                    call 13
                    drop
                    local.get 7
                    local.get 13
                    i32.add
                    i32.const 6
                    i32.store8
                    local.get 6
                    i32.const 0
                    i32.store8 offset=1015
                    local.get 6
                    local.get 6
                    i32.load8_u offset=1167
                    i32.const 128
                    i32.or
                    i32.store8 offset=1167
                    local.get 6
                    local.get 6
                    i64.load offset=680
                    local.get 6
                    i64.load offset=1032
                    i64.xor
                    i64.store offset=680
                    local.get 6
                    local.get 6
                    i64.load offset=688
                    local.get 6
                    i64.load offset=1040
                    i64.xor
                    i64.store offset=688
                    local.get 6
                    local.get 6
                    i64.load offset=696
                    local.get 6
                    i64.load offset=1048
                    i64.xor
                    i64.store offset=696
                    local.get 6
                    local.get 6
                    i64.load offset=704
                    local.get 6
                    i64.load offset=1056
                    i64.xor
                    i64.store offset=704
                    local.get 6
                    local.get 6
                    i64.load offset=712
                    local.get 6
                    i64.load offset=1064
                    i64.xor
                    i64.store offset=712
                    local.get 6
                    local.get 6
                    i64.load offset=720
                    local.get 6
                    i64.load offset=1072
                    i64.xor
                    i64.store offset=720
                    local.get 6
                    local.get 6
                    i64.load offset=728
                    local.get 6
                    i64.load offset=1080
                    i64.xor
                    i64.store offset=728
                    local.get 6
                    local.get 6
                    i64.load offset=736
                    local.get 6
                    i64.load offset=1088
                    i64.xor
                    i64.store offset=736
                    local.get 6
                    local.get 6
                    i64.load offset=744
                    local.get 6
                    i64.load offset=1096
                    i64.xor
                    i64.store offset=744
                    local.get 6
                    local.get 6
                    i64.load offset=752
                    local.get 6
                    i64.load offset=1104
                    i64.xor
                    i64.store offset=752
                    local.get 6
                    local.get 6
                    i64.load offset=760
                    local.get 6
                    i64.load offset=1112
                    i64.xor
                    i64.store offset=760
                    local.get 6
                    local.get 6
                    i64.load offset=768
                    local.get 6
                    i64.load offset=1120
                    i64.xor
                    i64.store offset=768
                    local.get 6
                    local.get 6
                    i64.load offset=776
                    local.get 6
                    i64.load offset=1128
                    i64.xor
                    i64.store offset=776
                    local.get 6
                    local.get 6
                    i64.load offset=784
                    local.get 6
                    i64.load offset=1136
                    i64.xor
                    i64.store offset=784
                    local.get 6
                    local.get 6
                    i64.load offset=792
                    local.get 6
                    i64.load offset=1144
                    i64.xor
                    i64.store offset=792
                    local.get 6
                    local.get 6
                    i64.load offset=800
                    local.get 6
                    i64.load offset=1152
                    i64.xor
                    i64.store offset=800
                    local.get 6
                    local.get 6
                    i64.load offset=808
                    local.get 6
                    i64.load offset=1160
                    i64.xor
                    i64.store offset=808
                    local.get 12
                    call 4
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 24
                        i64.const 137438953472
                        i64.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=680
                        local.get 8
                        i32.load8_u
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=681
                        local.get 8
                        i32.load8_u offset=1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=682
                        local.get 8
                        i32.load8_u offset=2
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=683
                        local.get 8
                        i32.load8_u offset=3
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=684
                        local.get 8
                        i32.load8_u offset=4
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=685
                        local.get 8
                        i32.load8_u offset=5
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=686
                        local.get 8
                        i32.load8_u offset=6
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=687
                        local.get 8
                        i32.load8_u offset=7
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=688
                        local.get 8
                        i32.load8_u offset=8
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=689
                        local.get 8
                        i32.load8_u offset=9
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=690
                        local.get 8
                        i32.load8_u offset=10
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=691
                        local.get 8
                        i32.load8_u offset=11
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=692
                        local.get 8
                        i32.load8_u offset=12
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=693
                        local.get 8
                        i32.load8_u offset=13
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=694
                        local.get 8
                        i32.load8_u offset=14
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=695
                        local.get 8
                        i32.load8_u offset=15
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=696
                        local.get 8
                        i32.load8_u offset=16
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=697
                        local.get 8
                        i32.load8_u offset=17
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=698
                        local.get 8
                        i32.load8_u offset=18
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=699
                        local.get 8
                        i32.load8_u offset=19
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=700
                        local.get 8
                        i32.load8_u offset=20
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=701
                        local.get 8
                        i32.load8_u offset=21
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=702
                        local.get 8
                        i32.load8_u offset=22
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=703
                        local.get 8
                        i32.load8_u offset=23
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=704
                        local.get 8
                        i32.load8_u offset=24
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=705
                        local.get 8
                        i32.load8_u offset=25
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=706
                        local.get 8
                        i32.load8_u offset=26
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=707
                        local.get 8
                        i32.load8_u offset=27
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=708
                        local.get 8
                        i32.load8_u offset=28
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=709
                        local.get 8
                        i32.load8_u offset=29
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=710
                        local.get 8
                        i32.load8_u offset=30
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 6
                        i32.load8_u offset=711
                        local.get 8
                        i32.load8_u offset=31
                        i32.eq
                        br_if 1 (;@9;)
                      end
                      local.get 11
                      if  ;; label = @10
                        local.get 9
                        i32.const 4
                        i32.sub
                        i32.load
                        local.tee 7
                        i32.const -8
                        i32.and
                        local.tee 13
                        i32.const 4
                        i32.const 8
                        local.get 7
                        i32.const 3
                        i32.and
                        local.tee 7
                        select
                        local.get 11
                        i32.add
                        i32.lt_u
                        br_if 8 (;@2;)
                        local.get 7
                        i32.const 0
                        local.get 13
                        local.get 11
                        i32.const 39
                        i32.add
                        i32.gt_u
                        select
                        br_if 3 (;@7;)
                        local.get 9
                        call 5
                      end
                      local.get 22
                      i64.const 1
                      i64.add
                      local.tee 22
                      local.get 23
                      i64.ne
                      br_if 1 (;@8;)
                      br 3 (;@6;)
                    end
                  end
                  local.get 11
                  if  ;; label = @8
                    local.get 9
                    local.get 11
                    call 28
                  end
                  local.get 22
                  f64.convert_i64_u
                  local.set 25
                  i32.const 0
                  local.set 7
                  local.get 10
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 8
                  local.get 10
                  call 28
                  br 3 (;@4;)
                end
                br 5 (;@1;)
              end
              local.get 10
              i32.eqz
              br_if 0 (;@5;)
              local.get 8
              i32.const 4
              i32.sub
              i32.load
              local.tee 7
              i32.const -8
              i32.and
              local.tee 9
              i32.const 4
              i32.const 8
              local.get 7
              i32.const 3
              i32.and
              local.tee 7
              select
              local.get 10
              i32.add
              i32.lt_u
              br_if 3 (;@2;)
              local.get 7
              i32.const 0
              local.get 9
              local.get 10
              i32.const 39
              i32.add
              i32.gt_u
              select
              br_if 4 (;@1;)
              local.get 8
              call 5
            end
            i32.const 1
            local.set 7
          end
          local.get 4
          if  ;; label = @4
            local.get 3
            i32.const 4
            i32.sub
            i32.load
            local.tee 8
            i32.const -8
            i32.and
            local.tee 9
            i32.const 4
            i32.const 8
            local.get 8
            i32.const 3
            i32.and
            local.tee 8
            select
            local.get 4
            i32.add
            i32.lt_u
            br_if 2 (;@2;)
            local.get 8
            i32.const 0
            local.get 9
            local.get 4
            i32.const 39
            i32.add
            i32.gt_u
            select
            br_if 3 (;@1;)
            local.get 3
            call 5
          end
          local.get 2
          if  ;; label = @4
            local.get 1
            i32.const 4
            i32.sub
            i32.load
            local.tee 3
            i32.const -8
            i32.and
            local.tee 4
            i32.const 4
            i32.const 8
            local.get 3
            i32.const 3
            i32.and
            local.tee 3
            select
            local.get 2
            i32.add
            i32.lt_u
            br_if 2 (;@2;)
            local.get 3
            i32.const 0
            local.get 4
            local.get 2
            i32.const 39
            i32.add
            i32.gt_u
            select
            br_if 3 (;@1;)
            local.get 1
            call 5
          end
          local.get 0
          f64.const 0x0p+0 (;=0;)
          local.get 25
          local.get 7
          select
          f64.store offset=8
          local.get 0
          local.get 7
          i32.const 1
          i32.xor
          i32.store
          local.get 6
          i32.const 1168
          i32.add
          global.set 0
          return
        end
        local.get 1
        local.get 2
        local.get 7
        local.get 8
        call 39
        unreachable
      end
      i32.const 1052409
      i32.const 46
      i32.const 1052456
      call 32
      unreachable
    end
    i32.const 1052472
    i32.const 46
    i32.const 1052520
    call 32
    unreachable)
  (func (;2;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 7
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=8
          i32.const 1
          i32.and
          i32.eqz
          local.tee 0
          local.get 1
          i32.load
          local.tee 5
          i32.eqz
          i32.and
          i32.eqz
          if  ;; label = @4
            block  ;; label = @5
              local.get 0
              br_if 0 (;@5;)
              local.get 3
              local.get 7
              i32.add
              local.set 11
              block  ;; label = @6
                local.get 1
                i32.load offset=12
                local.tee 10
                i32.eqz
                if  ;; label = @7
                  local.get 3
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 3
                local.set 2
                loop  ;; label = @7
                  local.get 2
                  local.tee 0
                  local.get 11
                  i32.eq
                  br_if 2 (;@5;)
                  block (result i32)  ;; label = @8
                    local.get 0
                    i32.const 1
                    i32.add
                    local.get 0
                    i32.load8_s
                    local.tee 9
                    i32.const 0
                    i32.ge_s
                    br_if 0 (;@8;)
                    drop
                    local.get 0
                    i32.const 2
                    i32.add
                    local.get 9
                    i32.const -32
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    local.get 0
                    i32.const 3
                    i32.add
                    local.get 9
                    i32.const -16
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    local.get 0
                    i32.const 4
                    i32.add
                  end
                  local.tee 2
                  local.get 0
                  i32.sub
                  local.get 6
                  i32.add
                  local.set 6
                  local.get 10
                  local.get 8
                  i32.const 1
                  i32.add
                  local.tee 8
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 2
              local.get 11
              i32.eq
              br_if 0 (;@5;)
              local.get 2
              i32.load8_s
              drop
              local.get 6
              local.get 7
              block (result i32)  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 7
                  i32.lt_u
                  if  ;; label = @8
                    local.get 3
                    local.get 6
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    br_if 1 (;@7;)
                    i32.const 0
                    br 2 (;@6;)
                  end
                  local.get 6
                  local.get 7
                  i32.eq
                  br_if 0 (;@7;)
                  i32.const 0
                  br 1 (;@6;)
                end
                local.get 3
              end
              local.tee 0
              select
              local.set 7
              local.get 0
              local.get 3
              local.get 0
              select
              local.set 3
            end
            local.get 5
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i32.load offset=4
            local.set 13
            local.get 7
            i32.const 16
            i32.ge_u
            if  ;; label = @5
              local.get 7
              local.get 3
              local.get 3
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.tee 6
              i32.sub
              local.tee 8
              i32.add
              local.tee 10
              i32.const 3
              i32.and
              local.set 9
              i32.const 0
              local.set 0
              local.get 3
              local.get 6
              i32.ne
              if  ;; label = @6
                local.get 8
                i32.const -4
                i32.le_u
                if  ;; label = @7
                  i32.const 0
                  local.set 5
                  loop  ;; label = @8
                    local.get 0
                    local.get 3
                    local.get 5
                    i32.add
                    local.tee 2
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 2
                    i32.const 1
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 2
                    i32.const 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.get 2
                    i32.const 3
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.set 0
                    local.get 5
                    i32.const 4
                    i32.add
                    local.tee 5
                    br_if 0 (;@8;)
                  end
                end
                local.get 3
                local.set 2
                loop  ;; label = @7
                  local.get 0
                  local.get 2
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 0
                  local.get 2
                  i32.const 1
                  i32.add
                  local.set 2
                  local.get 8
                  i32.const 1
                  i32.add
                  local.tee 8
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 9
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                local.get 10
                i32.const -4
                i32.and
                i32.add
                local.tee 2
                i32.load8_s
                i32.const -65
                i32.gt_s
                local.set 4
                local.get 9
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 2
                i32.load8_s offset=1
                i32.const -65
                i32.gt_s
                i32.add
                local.set 4
                local.get 9
                i32.const 2
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 2
                i32.load8_s offset=2
                i32.const -65
                i32.gt_s
                i32.add
                local.set 4
              end
              local.get 10
              i32.const 2
              i32.shr_u
              local.set 5
              local.get 0
              local.get 4
              i32.add
              local.set 4
              loop  ;; label = @6
                local.get 6
                local.set 10
                local.get 5
                i32.eqz
                br_if 4 (;@2;)
                i32.const 192
                local.get 5
                local.get 5
                i32.const 192
                i32.ge_u
                select
                local.tee 12
                i32.const 3
                i32.and
                local.set 8
                local.get 12
                i32.const 2
                i32.shl
                local.set 11
                i32.const 0
                local.set 2
                local.get 5
                i32.const 4
                i32.ge_u
                if  ;; label = @7
                  local.get 6
                  local.get 11
                  i32.const 1008
                  i32.and
                  i32.add
                  local.set 9
                  local.get 6
                  local.set 0
                  loop  ;; label = @8
                    local.get 2
                    local.get 0
                    i32.load
                    local.tee 2
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 2
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    i32.add
                    local.get 0
                    i32.load offset=4
                    local.tee 2
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 2
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    i32.add
                    local.get 0
                    i32.load offset=8
                    local.tee 2
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 2
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    i32.add
                    local.get 0
                    i32.load offset=12
                    local.tee 2
                    i32.const -1
                    i32.xor
                    i32.const 7
                    i32.shr_u
                    local.get 2
                    i32.const 6
                    i32.shr_u
                    i32.or
                    i32.const 16843009
                    i32.and
                    i32.add
                    local.set 2
                    local.get 0
                    i32.const 16
                    i32.add
                    local.tee 0
                    local.get 9
                    i32.ne
                    br_if 0 (;@8;)
                  end
                end
                local.get 5
                local.get 12
                i32.sub
                local.set 5
                local.get 10
                local.get 11
                i32.add
                local.set 6
                local.get 2
                i32.const 8
                i32.shr_u
                i32.const 16711935
                i32.and
                local.get 2
                i32.const 16711935
                i32.and
                i32.add
                i32.const 65537
                i32.mul
                i32.const 16
                i32.shr_u
                local.get 4
                i32.add
                local.set 4
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
              end
              local.get 10
              local.get 12
              i32.const 252
              i32.and
              i32.const 2
              i32.shl
              i32.add
              local.tee 2
              i32.load
              local.tee 0
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 0
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.set 0
              local.get 8
              i32.const 1
              i32.eq
              br_if 2 (;@3;)
              local.get 0
              local.get 2
              i32.load offset=4
              local.tee 0
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 0
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.set 0
              local.get 8
              i32.const 2
              i32.eq
              br_if 2 (;@3;)
              local.get 0
              local.get 2
              i32.load offset=8
              local.tee 0
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 0
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.set 0
              br 2 (;@3;)
            end
            local.get 7
            i32.eqz
            if  ;; label = @5
              br 3 (;@2;)
            end
            local.get 7
            i32.const 3
            i32.and
            local.set 2
            block (result i32)  ;; label = @5
              local.get 7
              i32.const 4
              i32.lt_u
              if  ;; label = @6
                i32.const 0
                local.set 0
                i32.const 0
                br 1 (;@5;)
              end
              local.get 3
              i32.load8_s
              i32.const -65
              i32.gt_s
              local.get 3
              i32.load8_s offset=1
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=2
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=3
              i32.const -65
              i32.gt_s
              i32.add
              local.tee 4
              local.get 7
              i32.const 12
              i32.and
              local.tee 0
              i32.const 4
              i32.eq
              br_if 0 (;@5;)
              drop
              local.get 4
              local.get 3
              i32.load8_s offset=4
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=5
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=6
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=7
              i32.const -65
              i32.gt_s
              i32.add
              local.tee 4
              local.get 0
              i32.const 8
              i32.eq
              br_if 0 (;@5;)
              drop
              local.get 4
              local.get 3
              i32.load8_s offset=8
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=9
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=10
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.load8_s offset=11
              i32.const -65
              i32.gt_s
              i32.add
            end
            local.set 4
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            local.get 3
            i32.add
            local.set 0
            loop  ;; label = @5
              local.get 4
              local.get 0
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 4
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              local.get 2
              i32.const 1
              i32.sub
              local.tee 2
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          br 2 (;@1;)
        end
        local.get 0
        i32.const 8
        i32.shr_u
        i32.const 459007
        i32.and
        local.get 0
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 4
        i32.add
        local.set 4
      end
      block  ;; label = @2
        local.get 4
        local.get 13
        i32.lt_u
        if  ;; label = @3
          local.get 13
          local.get 4
          i32.sub
          local.set 5
          i32.const 0
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load8_u offset=32
                i32.const 1
                i32.sub
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;)
              end
              local.get 5
              local.set 0
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            local.get 5
            i32.const 1
            i32.shr_u
            local.set 0
            local.get 5
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 5
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.load offset=16
          local.set 2
          local.get 1
          i32.load offset=24
          local.set 6
          local.get 1
          i32.load offset=20
          local.set 1
          loop  ;; label = @4
            local.get 0
            i32.const 1
            i32.sub
            local.tee 0
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            local.get 2
            local.get 6
            i32.load offset=16
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      local.get 7
      local.get 6
      i32.load offset=12
      call_indirect (type 1)
      if  ;; label = @2
        i32.const 1
        return
      end
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 0
        local.get 5
        i32.eq
        if  ;; label = @3
          i32.const 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.get 2
        local.get 6
        i32.load offset=16
        call_indirect (type 0)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 1
      i32.sub
      local.get 5
      i32.lt_u
      return
    end
    local.get 1
    i32.load offset=20
    local.get 3
    local.get 7
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 1))
  (func (;3;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    i32.const 1
    local.set 7
    block  ;; label = @1
      local.get 1
      i32.load offset=20
      local.tee 5
      i32.const 39
      local.get 1
      i32.load offset=24
      local.tee 10
      i32.load offset=16
      local.tee 8
      call_indirect (type 0)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            block (result i32)  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 0
                                          i32.load
                                          local.tee 1
                                          br_table 2 (;@17;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 3 (;@16;) 5 (;@14;) 1 (;@18;) 1 (;@18;) 4 (;@15;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 11 (;@8;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 1 (;@18;) 7 (;@12;) 0 (;@19;)
                                        end
                                        local.get 1
                                        i32.const 92
                                        i32.eq
                                        br_if 5 (;@13;)
                                      end
                                      local.get 1
                                      i32.const 767
                                      i32.gt_u
                                      br_if 6 (;@11;)
                                      br 8 (;@9;)
                                    end
                                    local.get 2
                                    i64.const 0
                                    i64.store offset=10 align=2
                                    local.get 2
                                    i32.const 12380
                                    i32.store16 offset=8
                                    br 6 (;@10;)
                                  end
                                  local.get 2
                                  i64.const 0
                                  i64.store offset=10 align=2
                                  local.get 2
                                  i32.const 29788
                                  i32.store16 offset=8
                                  br 5 (;@10;)
                                end
                                local.get 2
                                i64.const 0
                                i64.store offset=10 align=2
                                local.get 2
                                i32.const 29276
                                i32.store16 offset=8
                                br 4 (;@10;)
                              end
                              local.get 2
                              i64.const 0
                              i64.store offset=10 align=2
                              local.get 2
                              i32.const 28252
                              i32.store16 offset=8
                              br 3 (;@10;)
                            end
                            local.get 2
                            i64.const 0
                            i64.store offset=10 align=2
                            local.get 2
                            i32.const 23644
                            i32.store16 offset=8
                            br 2 (;@10;)
                          end
                          local.get 2
                          i64.const 0
                          i64.store offset=10 align=2
                          local.get 2
                          i32.const 10076
                          i32.store16 offset=8
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          i32.const 17
                          i32.const 0
                          local.get 1
                          i32.const 71727
                          i32.ge_u
                          select
                          local.tee 0
                          local.get 0
                          i32.const 8
                          i32.or
                          local.tee 3
                          local.get 1
                          i32.const 11
                          i32.shl
                          local.tee 0
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1051284
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          i32.lt_u
                          select
                          local.tee 3
                          local.get 3
                          i32.const 4
                          i32.or
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1051284
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.get 0
                          i32.gt_u
                          select
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.or
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1051284
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.get 0
                          i32.gt_u
                          select
                          local.tee 3
                          local.get 3
                          i32.const 1
                          i32.add
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1051284
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.get 0
                          i32.gt_u
                          select
                          local.tee 3
                          local.get 3
                          i32.const 1
                          i32.add
                          local.tee 3
                          local.get 3
                          i32.const 2
                          i32.shl
                          i32.const 1051284
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.get 0
                          i32.gt_u
                          select
                          local.tee 3
                          i32.const 2
                          i32.shl
                          i32.const 1051284
                          i32.add
                          i32.load
                          i32.const 11
                          i32.shl
                          local.tee 4
                          local.get 0
                          i32.eq
                          local.get 0
                          local.get 4
                          i32.gt_u
                          i32.add
                          local.get 3
                          i32.add
                          local.tee 3
                          i32.const 33
                          i32.le_u
                          if  ;; label = @12
                            local.get 3
                            i32.const 2
                            i32.shl
                            i32.const 1051284
                            i32.add
                            local.tee 4
                            i32.load
                            i32.const 21
                            i32.shr_u
                            local.set 0
                            i32.const 751
                            local.set 6
                            block (result i32)  ;; label = @13
                              block  ;; label = @14
                                local.get 3
                                i32.const 33
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 4
                                i32.load offset=4
                                i32.const 21
                                i32.shr_u
                                local.set 6
                                local.get 3
                                br_if 0 (;@14;)
                                i32.const 0
                                br 1 (;@13;)
                              end
                              local.get 3
                              i32.const 2
                              i32.shl
                              i32.const 1051280
                              i32.add
                              i32.load
                              i32.const 2097151
                              i32.and
                            end
                            local.set 4
                            block  ;; label = @13
                              local.get 6
                              local.get 0
                              i32.const -1
                              i32.xor
                              i32.add
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 1
                              local.get 4
                              i32.sub
                              local.set 11
                              i32.const 751
                              local.get 0
                              local.get 0
                              i32.const 751
                              i32.le_u
                              select
                              local.set 9
                              local.get 6
                              i32.const 1
                              i32.sub
                              local.set 3
                              i32.const 0
                              local.set 4
                              loop  ;; label = @14
                                local.get 0
                                local.get 9
                                i32.eq
                                br_if 3 (;@11;)
                                local.get 4
                                local.get 0
                                i32.const 1051420
                                i32.add
                                i32.load8_u
                                i32.add
                                local.tee 4
                                local.get 11
                                i32.gt_u
                                br_if 1 (;@13;)
                                local.get 3
                                local.get 0
                                i32.const 1
                                i32.add
                                local.tee 0
                                i32.ne
                                br_if 0 (;@14;)
                              end
                              local.get 3
                              local.set 0
                            end
                            local.get 0
                            i32.const 1
                            i32.and
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 2
                            i32.const 32
                            i32.add
                            local.tee 0
                            local.get 1
                            i32.const 15
                            i32.and
                            i32.const 1048906
                            i32.add
                            i32.load8_u
                            i32.store8
                            local.get 2
                            i32.const 0
                            i32.store8 offset=26
                            local.get 2
                            i32.const 0
                            i32.store16 offset=24
                            local.get 2
                            local.get 1
                            i32.const 20
                            i32.shr_u
                            i32.const 1048906
                            i32.add
                            i32.load8_u
                            i32.store8 offset=27
                            local.get 2
                            local.get 1
                            i32.const 4
                            i32.shr_u
                            i32.const 15
                            i32.and
                            i32.const 1048906
                            i32.add
                            i32.load8_u
                            i32.store8 offset=31
                            local.get 2
                            local.get 1
                            i32.const 8
                            i32.shr_u
                            i32.const 15
                            i32.and
                            i32.const 1048906
                            i32.add
                            i32.load8_u
                            i32.store8 offset=30
                            local.get 2
                            local.get 1
                            i32.const 12
                            i32.shr_u
                            i32.const 15
                            i32.and
                            i32.const 1048906
                            i32.add
                            i32.load8_u
                            i32.store8 offset=29
                            local.get 2
                            local.get 1
                            i32.const 16
                            i32.shr_u
                            i32.const 15
                            i32.and
                            i32.const 1048906
                            i32.add
                            i32.load8_u
                            i32.store8 offset=28
                            local.get 1
                            i32.const 1
                            i32.or
                            i32.clz
                            i32.const 2
                            i32.shr_u
                            local.tee 1
                            local.get 2
                            i32.const 24
                            i32.add
                            local.tee 4
                            i32.add
                            local.tee 3
                            i32.const 123
                            i32.store8
                            local.get 3
                            i32.const 1
                            i32.sub
                            i32.const 117
                            i32.store8
                            local.get 4
                            local.get 1
                            i32.const 2
                            i32.sub
                            local.tee 1
                            i32.add
                            i32.const 92
                            i32.store8
                            local.get 2
                            i32.const 125
                            i32.store8 offset=33
                            local.get 2
                            i32.const 16
                            i32.add
                            local.get 0
                            i32.load16_u
                            i32.store16
                            local.get 2
                            local.get 2
                            i64.load offset=24 align=4
                            i64.store offset=8
                            br 6 (;@6;)
                          end
                          local.get 3
                          i32.const 34
                          i32.const 1051252
                          call 25
                          unreachable
                        end
                        local.get 9
                        i32.const 751
                        i32.const 1051268
                        call 25
                        unreachable
                      end
                      i32.const 0
                      local.set 1
                      i32.const 2
                      br 4 (;@5;)
                    end
                    local.get 1
                    i32.const 32
                    i32.lt_u
                    br_if 1 (;@7;)
                    local.get 1
                    i32.const 127
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 65536
                    i32.ge_u
                    if  ;; label = @9
                      local.get 1
                      i32.const 131072
                      i32.lt_u
                      if  ;; label = @10
                        local.get 1
                        i32.const 1049768
                        i32.const 44
                        i32.const 1049856
                        i32.const 208
                        i32.const 1050064
                        i32.const 486
                        call 12
                        i32.eqz
                        br_if 3 (;@7;)
                        br 2 (;@8;)
                      end
                      local.get 1
                      i32.const 2097150
                      i32.and
                      i32.const 178206
                      i32.eq
                      local.get 1
                      i32.const 2097120
                      i32.and
                      i32.const 173792
                      i32.eq
                      i32.or
                      local.get 1
                      i32.const 177984
                      i32.sub
                      i32.const -7
                      i32.gt_u
                      local.get 1
                      i32.const 183984
                      i32.sub
                      i32.const -15
                      i32.gt_u
                      i32.or
                      i32.or
                      local.get 1
                      i32.const 191472
                      i32.sub
                      i32.const -16
                      i32.gt_u
                      local.get 1
                      i32.const 194560
                      i32.sub
                      i32.const -2467
                      i32.gt_u
                      i32.or
                      local.get 1
                      i32.const 196608
                      i32.sub
                      i32.const -1507
                      i32.gt_u
                      local.get 1
                      i32.const 201552
                      i32.sub
                      i32.const -6
                      i32.gt_u
                      i32.or
                      i32.or
                      i32.or
                      br_if 2 (;@7;)
                      local.get 1
                      i32.const 917760
                      i32.sub
                      i32.const -712017
                      i32.gt_u
                      br_if 2 (;@7;)
                      local.get 1
                      i32.const 918000
                      i32.lt_u
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    local.get 1
                    i32.const 1050550
                    i32.const 40
                    i32.const 1050630
                    i32.const 290
                    i32.const 1050920
                    i32.const 297
                    call 12
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 2
                  local.get 1
                  i32.store offset=12
                  local.get 2
                  i32.const 128
                  i32.store8 offset=8
                  br 3 (;@4;)
                end
                local.get 2
                i32.const 44
                i32.add
                local.tee 0
                local.get 1
                i32.const 15
                i32.and
                i32.const 1048906
                i32.add
                i32.load8_u
                i32.store8
                local.get 2
                i32.const 0
                i32.store8 offset=38
                local.get 2
                i32.const 0
                i32.store16 offset=36
                local.get 2
                local.get 1
                i32.const 20
                i32.shr_u
                i32.const 1048906
                i32.add
                i32.load8_u
                i32.store8 offset=39
                local.get 2
                local.get 1
                i32.const 4
                i32.shr_u
                i32.const 15
                i32.and
                i32.const 1048906
                i32.add
                i32.load8_u
                i32.store8 offset=43
                local.get 2
                local.get 1
                i32.const 8
                i32.shr_u
                i32.const 15
                i32.and
                i32.const 1048906
                i32.add
                i32.load8_u
                i32.store8 offset=42
                local.get 2
                local.get 1
                i32.const 12
                i32.shr_u
                i32.const 15
                i32.and
                i32.const 1048906
                i32.add
                i32.load8_u
                i32.store8 offset=41
                local.get 2
                local.get 1
                i32.const 16
                i32.shr_u
                i32.const 15
                i32.and
                i32.const 1048906
                i32.add
                i32.load8_u
                i32.store8 offset=40
                local.get 1
                i32.const 1
                i32.or
                i32.clz
                i32.const 2
                i32.shr_u
                local.tee 1
                local.get 2
                i32.const 36
                i32.add
                local.tee 4
                i32.add
                local.tee 3
                i32.const 123
                i32.store8
                local.get 3
                i32.const 1
                i32.sub
                i32.const 117
                i32.store8
                local.get 4
                local.get 1
                i32.const 2
                i32.sub
                local.tee 1
                i32.add
                i32.const 92
                i32.store8
                local.get 2
                i32.const 125
                i32.store8 offset=45
                local.get 2
                i32.const 16
                i32.add
                local.get 0
                i32.load16_u
                i32.store16
                local.get 2
                local.get 2
                i64.load offset=36 align=4
                i64.store offset=8
              end
              i32.const 10
            end
            local.tee 0
            i32.store8 offset=19
            local.get 2
            local.get 1
            i32.store8 offset=18
            local.get 2
            i32.load8_u offset=8
            i32.const 128
            i32.ne
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=12
            local.set 1
          end
          local.get 5
          local.get 1
          local.get 8
          call_indirect (type 0)
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 5
        local.get 1
        i32.const 255
        i32.and
        local.tee 1
        local.get 2
        i32.const 8
        i32.add
        i32.add
        local.get 0
        local.get 1
        i32.sub
        local.get 10
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const 39
      local.get 8
      call_indirect (type 0)
      local.set 7
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 7)
  (func (;4;) (type 4) (param i32)
    (local i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i32)
    local.get 0
    i64.load offset=192
    local.set 15
    local.get 0
    i64.load offset=152
    local.set 26
    local.get 0
    i64.load offset=112
    local.set 16
    local.get 0
    i64.load offset=72
    local.set 17
    local.get 0
    i64.load offset=32
    local.set 27
    local.get 0
    i64.load offset=184
    local.set 28
    local.get 0
    i64.load offset=144
    local.set 29
    local.get 0
    i64.load offset=104
    local.set 18
    local.get 0
    i64.load offset=64
    local.set 13
    local.get 0
    i64.load offset=24
    local.set 7
    local.get 0
    i64.load offset=176
    local.set 19
    local.get 0
    i64.load offset=136
    local.set 20
    local.get 0
    i64.load offset=96
    local.set 21
    local.get 0
    i64.load offset=56
    local.set 8
    local.get 0
    i64.load offset=16
    local.set 4
    local.get 0
    i64.load offset=168
    local.set 14
    local.get 0
    i64.load offset=128
    local.set 22
    local.get 0
    i64.load offset=88
    local.set 23
    local.get 0
    i64.load offset=48
    local.set 9
    local.get 0
    i64.load offset=8
    local.set 3
    local.get 0
    i64.load offset=160
    local.set 10
    local.get 0
    i64.load offset=120
    local.set 24
    local.get 0
    i64.load offset=80
    local.set 25
    local.get 0
    i64.load offset=40
    local.set 11
    local.get 0
    i64.load
    local.set 12
    i32.const 8
    local.set 46
    loop  ;; label = @1
      local.get 10
      local.get 24
      local.get 25
      local.get 11
      local.get 12
      i64.xor
      i64.xor
      i64.xor
      i64.xor
      local.tee 1
      local.get 19
      local.get 20
      local.get 21
      local.get 4
      local.get 8
      i64.xor
      i64.xor
      i64.xor
      i64.xor
      local.tee 2
      i64.const 1
      i64.rotl
      i64.xor
      local.tee 5
      local.get 9
      i64.xor
      local.get 15
      local.get 28
      local.get 29
      local.get 18
      local.get 7
      local.get 13
      i64.xor
      i64.xor
      i64.xor
      i64.xor
      local.tee 6
      local.get 1
      i64.const 1
      i64.rotl
      i64.xor
      local.tee 1
      i64.xor
      local.set 45
      local.get 5
      local.get 14
      i64.xor
      i64.const 2
      i64.rotl
      local.tee 30
      local.get 13
      local.get 15
      local.get 26
      local.get 16
      local.get 17
      local.get 27
      i64.xor
      i64.xor
      i64.xor
      i64.xor
      local.tee 13
      i64.const 1
      i64.rotl
      local.get 2
      i64.xor
      local.tee 2
      i64.xor
      i64.const 55
      i64.rotl
      local.tee 31
      local.get 4
      local.get 14
      local.get 22
      local.get 23
      local.get 3
      local.get 9
      i64.xor
      i64.xor
      i64.xor
      i64.xor
      local.tee 14
      local.get 6
      i64.const 1
      i64.rotl
      i64.xor
      local.tee 4
      i64.xor
      i64.const 62
      i64.rotl
      local.tee 32
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 15
      local.get 13
      local.get 14
      i64.const 1
      i64.rotl
      i64.xor
      local.tee 6
      local.get 24
      i64.xor
      i64.const 41
      i64.rotl
      local.tee 33
      local.get 1
      local.get 16
      i64.xor
      i64.const 39
      i64.rotl
      local.tee 34
      i64.const -1
      i64.xor
      i64.and
      local.get 31
      i64.xor
      local.set 14
      local.get 5
      local.get 23
      i64.xor
      i64.const 10
      i64.rotl
      local.tee 35
      local.get 2
      local.get 28
      i64.xor
      i64.const 56
      i64.rotl
      local.tee 36
      local.get 4
      local.get 20
      i64.xor
      i64.const 15
      i64.rotl
      local.tee 37
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 20
      local.get 1
      local.get 27
      i64.xor
      i64.const 27
      i64.rotl
      local.tee 38
      local.get 35
      local.get 6
      local.get 11
      i64.xor
      i64.const 36
      i64.rotl
      local.tee 39
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 24
      local.get 6
      local.get 10
      i64.xor
      i64.const 18
      i64.rotl
      local.tee 10
      local.get 4
      local.get 8
      i64.xor
      i64.const 6
      i64.rotl
      local.tee 40
      local.get 3
      local.get 5
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 41
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 16
      local.get 1
      local.get 26
      i64.xor
      i64.const 8
      i64.rotl
      local.tee 42
      local.get 2
      local.get 18
      i64.xor
      i64.const 25
      i64.rotl
      local.tee 43
      i64.const -1
      i64.xor
      i64.and
      local.get 40
      i64.xor
      local.set 23
      local.get 4
      local.get 19
      i64.xor
      i64.const 61
      i64.rotl
      local.tee 8
      local.get 1
      local.get 17
      i64.xor
      i64.const 20
      i64.rotl
      local.tee 3
      local.get 2
      local.get 7
      i64.xor
      i64.const 28
      i64.rotl
      local.tee 7
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 17
      local.get 5
      local.get 22
      i64.xor
      i64.const 45
      i64.rotl
      local.tee 9
      local.get 7
      local.get 8
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 13
      local.get 6
      local.get 25
      i64.xor
      i64.const 3
      i64.rotl
      local.tee 11
      local.get 8
      local.get 9
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 8
      local.get 9
      local.get 11
      i64.const -1
      i64.xor
      i64.and
      local.get 3
      i64.xor
      local.set 9
      local.get 11
      local.get 3
      i64.const -1
      i64.xor
      i64.and
      local.get 7
      i64.xor
      local.set 11
      local.get 2
      local.get 29
      i64.xor
      i64.const 21
      i64.rotl
      local.tee 3
      local.get 6
      local.get 12
      i64.xor
      local.tee 5
      local.get 45
      i64.const 14
      i64.rotl
      local.tee 1
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 7
      local.get 4
      local.get 21
      i64.xor
      i64.const 43
      i64.rotl
      local.tee 12
      local.get 1
      local.get 3
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 4
      i64.const 44
      i64.rotl
      local.tee 2
      local.get 3
      local.get 12
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 3
      local.get 46
      i32.const 1052176
      i32.add
      i64.load
      local.get 12
      local.get 2
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.get 5
      i64.xor
      local.set 12
      local.get 39
      local.get 38
      i64.const -1
      i64.xor
      i64.and
      local.get 36
      i64.xor
      local.tee 6
      local.set 26
      local.get 2
      local.get 5
      i64.const -1
      i64.xor
      i64.and
      local.get 1
      i64.xor
      local.tee 5
      local.set 27
      local.get 33
      local.get 32
      local.get 30
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.tee 1
      local.set 28
      local.get 38
      local.get 36
      i64.const -1
      i64.xor
      i64.and
      local.get 37
      i64.xor
      local.tee 2
      local.set 29
      local.get 41
      local.get 10
      i64.const -1
      i64.xor
      i64.and
      local.get 42
      i64.xor
      local.set 18
      local.get 30
      local.get 33
      i64.const -1
      i64.xor
      i64.and
      local.get 34
      i64.xor
      local.set 19
      local.get 10
      local.get 42
      i64.const -1
      i64.xor
      i64.and
      local.get 43
      i64.xor
      local.set 21
      local.get 39
      local.get 37
      local.get 35
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 22
      local.get 34
      local.get 31
      i64.const -1
      i64.xor
      i64.and
      local.get 32
      i64.xor
      local.set 10
      local.get 43
      local.get 40
      i64.const -1
      i64.xor
      i64.and
      local.get 41
      i64.xor
      local.set 25
      local.get 46
      i32.const 8
      i32.add
      local.tee 46
      i32.const 192
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 10
    i64.store offset=160
    local.get 0
    local.get 24
    i64.store offset=120
    local.get 0
    local.get 25
    i64.store offset=80
    local.get 0
    local.get 11
    i64.store offset=40
    local.get 0
    local.get 14
    i64.store offset=168
    local.get 0
    local.get 22
    i64.store offset=128
    local.get 0
    local.get 23
    i64.store offset=88
    local.get 0
    local.get 9
    i64.store offset=48
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 0
    local.get 19
    i64.store offset=176
    local.get 0
    local.get 20
    i64.store offset=136
    local.get 0
    local.get 21
    i64.store offset=96
    local.get 0
    local.get 8
    i64.store offset=56
    local.get 0
    local.get 4
    i64.store offset=16
    local.get 0
    local.get 1
    i64.store offset=184
    local.get 0
    local.get 2
    i64.store offset=144
    local.get 0
    local.get 18
    i64.store offset=104
    local.get 0
    local.get 13
    i64.store offset=64
    local.get 0
    local.get 7
    i64.store offset=24
    local.get 0
    local.get 15
    i64.store offset=192
    local.get 0
    local.get 6
    i64.store offset=152
    local.get 0
    local.get 16
    i64.store offset=112
    local.get 0
    local.get 17
    i64.store offset=72
    local.get 0
    local.get 5
    i64.store offset=32
    local.get 0
    local.get 12
    i64.store)
  (func (;5;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 8
    i32.sub
    local.tee 1
    local.get 0
    i32.const 4
    i32.sub
    i32.load
    local.tee 3
    i32.const -8
    i32.and
    local.tee 0
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load
        local.tee 3
        local.get 0
        i32.add
        local.set 0
        local.get 1
        local.get 3
        i32.sub
        local.tee 1
        i32.const 1052968
        i32.load
        i32.eq
        if  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 1052960
          local.get 0
          i32.store
          local.get 2
          local.get 2
          i32.load offset=4
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 0
          i32.store
          return
        end
        local.get 1
        local.get 3
        call 11
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.load offset=4
                    local.tee 3
                    i32.const 2
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 2
                      i32.const 1052972
                      i32.load
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 2
                      i32.const 1052968
                      i32.load
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 2
                      local.get 3
                      i32.const -8
                      i32.and
                      local.tee 2
                      call 11
                      local.get 1
                      local.get 0
                      local.get 2
                      i32.add
                      local.tee 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 1
                      i32.add
                      local.get 0
                      i32.store
                      local.get 1
                      i32.const 1052968
                      i32.load
                      i32.ne
                      br_if 1 (;@8;)
                      i32.const 1052960
                      local.get 0
                      i32.store
                      return
                    end
                    local.get 2
                    local.get 3
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 1
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 1
                    i32.add
                    local.get 0
                    i32.store
                  end
                  local.get 0
                  i32.const 256
                  i32.lt_u
                  br_if 2 (;@5;)
                  i32.const 31
                  local.set 2
                  local.get 1
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 0
                  i32.const 16777215
                  i32.le_u
                  if  ;; label = @8
                    local.get 0
                    i32.const 6
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 2
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 2
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 2
                  end
                  local.get 1
                  local.get 2
                  i32.store offset=28
                  local.get 2
                  i32.const 2
                  i32.shl
                  i32.const 1052544
                  i32.add
                  local.set 3
                  i32.const 1
                  local.get 2
                  i32.shl
                  local.tee 4
                  i32.const 1052956
                  i32.load
                  i32.and
                  br_if 3 (;@4;)
                  local.get 3
                  local.get 1
                  i32.store
                  local.get 1
                  local.get 3
                  i32.store offset=24
                  local.get 1
                  local.get 1
                  i32.store offset=12
                  local.get 1
                  local.get 1
                  i32.store offset=8
                  i32.const 1052956
                  i32.const 1052956
                  i32.load
                  local.get 4
                  i32.or
                  i32.store
                  br 4 (;@3;)
                end
                i32.const 1052972
                local.get 1
                i32.store
                i32.const 1052964
                i32.const 1052964
                i32.load
                local.get 0
                i32.add
                local.tee 0
                i32.store
                local.get 1
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                i32.const 1052968
                i32.load
                local.get 1
                i32.eq
                if  ;; label = @7
                  i32.const 1052960
                  i32.const 0
                  i32.store
                  i32.const 1052968
                  i32.const 0
                  i32.store
                end
                local.get 0
                i32.const 1052984
                i32.load
                local.tee 2
                i32.le_u
                br_if 5 (;@1;)
                i32.const 1052972
                i32.load
                local.tee 0
                i32.eqz
                br_if 5 (;@1;)
                i32.const 1052964
                i32.load
                local.tee 3
                i32.const 41
                i32.lt_u
                br_if 4 (;@2;)
                i32.const 1052672
                local.set 1
                loop  ;; label = @7
                  local.get 0
                  local.get 1
                  i32.load
                  local.tee 5
                  i32.ge_u
                  if  ;; label = @8
                    local.get 0
                    local.get 5
                    local.get 1
                    i32.load offset=4
                    i32.add
                    i32.lt_u
                    br_if 6 (;@2;)
                  end
                  local.get 1
                  i32.load offset=8
                  local.set 1
                  br 0 (;@7;)
                end
                unreachable
              end
              i32.const 1052968
              local.get 1
              i32.store
              i32.const 1052960
              i32.const 1052960
              i32.load
              local.get 0
              i32.add
              local.tee 0
              i32.store
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 0
              i32.store
              return
            end
            local.get 0
            i32.const 248
            i32.and
            i32.const 1052688
            i32.add
            local.set 2
            block (result i32)  ;; label = @5
              i32.const 1052952
              i32.load
              local.tee 3
              i32.const 1
              local.get 0
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 0
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 1052952
                local.get 0
                local.get 3
                i32.or
                i32.store
                local.get 2
                br 1 (;@5;)
              end
              local.get 2
              i32.load offset=8
            end
            local.set 0
            local.get 2
            local.get 1
            i32.store offset=8
            local.get 0
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 2
            i32.store offset=12
            local.get 1
            local.get 0
            i32.store offset=8
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 3
              i32.load
              local.tee 3
              i32.load offset=4
              i32.const -8
              i32.and
              i32.eq
              if  ;; label = @6
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 0
              i32.const 25
              local.get 2
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 0
              local.get 2
              i32.const 31
              i32.ne
              select
              i32.shl
              local.set 4
              loop  ;; label = @6
                local.get 3
                local.get 4
                i32.const 29
                i32.shr_u
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 5
                i32.load
                local.tee 2
                i32.eqz
                br_if 2 (;@4;)
                local.get 4
                i32.const 1
                i32.shl
                local.set 4
                local.get 2
                local.set 3
                local.get 2
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 0
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 2
            i32.load offset=8
            local.tee 0
            local.get 1
            i32.store offset=12
            local.get 2
            local.get 1
            i32.store offset=8
            local.get 1
            i32.const 0
            i32.store offset=24
            local.get 1
            local.get 2
            i32.store offset=12
            local.get 1
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          local.get 1
          i32.store
          local.get 1
          local.get 3
          i32.store offset=24
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
        end
        i32.const 0
        local.set 1
        i32.const 1052992
        i32.const 1052992
        i32.load
        i32.const 1
        i32.sub
        local.tee 0
        i32.store
        local.get 0
        br_if 1 (;@1;)
        i32.const 1052680
        i32.load
        local.tee 0
        if  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 0
            i32.load offset=8
            local.tee 0
            br_if 0 (;@4;)
          end
        end
        i32.const 1052992
        i32.const 4095
        local.get 1
        local.get 1
        i32.const 4095
        i32.le_u
        select
        i32.store
        return
      end
      i32.const 1052680
      i32.load
      local.tee 1
      if  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 1
          i32.load offset=8
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      i32.const 1052992
      i32.const 4095
      local.get 4
      local.get 4
      i32.const 4095
      i32.le_u
      select
      i32.store
      local.get 2
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1052984
      i32.const -1
      i32.store
    end)
  (func (;6;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 848
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 200
    call 21
    local.get 3
    i32.const 0
    i32.store8 offset=343
    local.get 3
    i32.const 208
    i32.add
    local.set 6
    block  ;; label = @1
      local.get 2
      i32.const 135
      i32.le_u
      if  ;; label = @2
        local.get 6
        local.get 1
        local.get 2
        call 13
        drop
        local.get 3
        local.get 2
        i32.store8 offset=343
        br 1 (;@1;)
      end
      local.get 3
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      i32.const 136
      i32.div_u
      local.tee 4
      call 18
      local.get 3
      local.get 2
      local.get 4
      i32.const 136
      i32.mul
      local.tee 4
      i32.sub
      local.tee 5
      i32.store8 offset=343
      local.get 6
      local.get 1
      local.get 4
      i32.add
      local.get 5
      call 13
      drop
    end
    local.get 3
    i32.const 376
    i32.add
    local.tee 9
    local.get 3
    i32.const 8
    i32.add
    i32.const 336
    call 13
    drop
    local.get 3
    i32.load8_u offset=711
    local.set 4
    i32.const 0
    local.set 6
    local.get 3
    i32.const 712
    i32.add
    local.tee 5
    i32.const 136
    call 21
    local.get 5
    local.get 3
    i32.const 576
    i32.add
    local.get 4
    call 13
    drop
    local.get 4
    local.get 5
    i32.add
    i32.const 6
    i32.store8
    local.get 3
    i32.const 384
    i32.add
    local.tee 4
    local.get 4
    i64.load
    local.get 3
    i64.load offset=720
    i64.xor
    i64.store
    local.get 3
    i32.const 392
    i32.add
    local.tee 5
    local.get 5
    i64.load
    local.get 3
    i64.load offset=728
    i64.xor
    i64.store
    local.get 3
    i32.const 400
    i32.add
    local.tee 7
    local.get 7
    i64.load
    local.get 3
    i64.load offset=736
    i64.xor
    i64.store
    local.get 3
    i32.const 0
    i32.store8 offset=711
    local.get 3
    local.get 3
    i32.load8_u offset=847
    i32.const 128
    i32.or
    i32.store8 offset=847
    local.get 3
    local.get 3
    i64.load offset=376
    local.get 3
    i64.load offset=712
    i64.xor
    i64.store offset=376
    local.get 3
    local.get 3
    i64.load offset=408
    local.get 3
    i64.load offset=744
    i64.xor
    i64.store offset=408
    local.get 3
    local.get 3
    i64.load offset=416
    local.get 3
    i64.load offset=752
    i64.xor
    i64.store offset=416
    local.get 3
    local.get 3
    i64.load offset=424
    local.get 3
    i64.load offset=760
    i64.xor
    i64.store offset=424
    local.get 3
    local.get 3
    i64.load offset=432
    local.get 3
    i64.load offset=768
    i64.xor
    i64.store offset=432
    local.get 3
    local.get 3
    i64.load offset=440
    local.get 3
    i64.load offset=776
    i64.xor
    i64.store offset=440
    local.get 3
    local.get 3
    i64.load offset=448
    local.get 3
    i64.load offset=784
    i64.xor
    i64.store offset=448
    local.get 3
    local.get 3
    i64.load offset=456
    local.get 3
    i64.load offset=792
    i64.xor
    i64.store offset=456
    local.get 3
    local.get 3
    i64.load offset=464
    local.get 3
    i64.load offset=800
    i64.xor
    i64.store offset=464
    local.get 3
    local.get 3
    i64.load offset=472
    local.get 3
    i64.load offset=808
    i64.xor
    i64.store offset=472
    local.get 3
    local.get 3
    i64.load offset=480
    local.get 3
    i64.load offset=816
    i64.xor
    i64.store offset=480
    local.get 3
    local.get 3
    i64.load offset=488
    local.get 3
    i64.load offset=824
    i64.xor
    i64.store offset=488
    local.get 3
    local.get 3
    i64.load offset=496
    local.get 3
    i64.load offset=832
    i64.xor
    i64.store offset=496
    local.get 3
    local.get 3
    i64.load offset=504
    local.get 3
    i64.load offset=840
    i64.xor
    i64.store offset=504
    local.get 9
    call 4
    local.get 3
    i32.const 368
    i32.add
    local.get 7
    i64.load
    i64.store
    local.get 3
    i32.const 360
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 3
    i32.const 352
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 3
    local.get 3
    i64.load offset=376
    i64.store offset=344
    local.get 3
    i32.const 0
    i32.store offset=384
    local.get 3
    i64.const 4294967296
    i64.store offset=376 align=4
    local.get 3
    i32.const 344
    i32.add
    local.set 7
    i32.const 1
    local.set 5
    loop  ;; label = @1
      local.get 7
      i32.load8_u
      local.tee 4
      i32.const 15
      i32.and
      local.tee 8
      i32.const 10
      i32.lt_u
      local.set 10
      local.get 4
      i32.const 4
      i32.shr_u
      local.tee 9
      i32.const 48
      i32.or
      local.get 9
      i32.const 87
      i32.add
      local.get 4
      i32.const 160
      i32.lt_u
      select
      local.set 4
      local.get 3
      i32.load offset=376
      local.get 6
      i32.eq
      if (result i32)  ;; label = @2
        local.get 3
        i32.const 376
        i32.add
        call 20
        local.get 3
        i32.load offset=380
      else
        local.get 5
      end
      local.get 6
      i32.add
      local.get 4
      i32.store8
      local.get 3
      local.get 6
      i32.const 1
      i32.add
      local.tee 4
      i32.store offset=384
      local.get 3
      i32.load offset=376
      local.get 4
      i32.eq
      if  ;; label = @2
        local.get 3
        i32.const 376
        i32.add
        call 20
      end
      local.get 3
      i32.load offset=380
      local.tee 5
      local.get 6
      i32.add
      i32.const 1
      i32.add
      local.get 8
      i32.const 48
      i32.or
      local.get 8
      i32.const 87
      i32.add
      local.get 10
      select
      i32.store8
      local.get 3
      local.get 4
      i32.const 1
      i32.add
      local.tee 4
      i32.store offset=384
      local.get 7
      i32.const 1
      i32.add
      local.set 7
      local.get 6
      i32.const 62
      i32.ne
      local.get 4
      local.set 6
      br_if 0 (;@1;)
    end
    local.get 3
    i32.load offset=376
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          if  ;; label = @4
            local.get 1
            i32.const 4
            i32.sub
            i32.load
            local.tee 4
            i32.const -8
            i32.and
            local.tee 7
            i32.const 4
            i32.const 8
            local.get 4
            i32.const 3
            i32.and
            local.tee 4
            select
            local.get 2
            i32.add
            i32.lt_u
            br_if 1 (;@3;)
            local.get 4
            i32.const 0
            local.get 7
            local.get 2
            i32.const 39
            i32.add
            i32.gt_u
            select
            br_if 2 (;@2;)
            local.get 1
            call 5
          end
          local.get 6
          i32.const 65
          i32.ge_u
          if  ;; label = @4
            local.get 5
            local.get 6
            i32.const 1
            i32.const 64
            call 7
            local.tee 5
            i32.eqz
            br_if 3 (;@1;)
          end
          local.get 0
          i32.const 64
          i32.store offset=4
          local.get 0
          local.get 5
          i32.store
          local.get 3
          i32.const 848
          i32.add
          global.set 0
          return
        end
        i32.const 1052409
        i32.const 46
        i32.const 1052456
        call 32
        unreachable
      end
      i32.const 1052472
      i32.const 46
      i32.const 1052520
      call 32
    end
    unreachable)
  (func (;7;) (type 6) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 4
              i32.sub
              local.tee 5
              i32.load
              local.tee 7
              i32.const -8
              i32.and
              local.tee 4
              i32.const 4
              i32.const 8
              local.get 7
              i32.const 3
              i32.and
              local.tee 6
              select
              local.get 1
              i32.add
              i32.ge_u
              if  ;; label = @6
                local.get 6
                i32.const 0
                local.get 1
                i32.const 39
                i32.add
                local.tee 8
                local.get 4
                i32.lt_u
                select
                br_if 1 (;@5;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const 9
                    i32.ge_u
                    if  ;; label = @9
                      local.get 2
                      local.get 3
                      call 10
                      local.tee 2
                      br_if 1 (;@8;)
                      i32.const 0
                      return
                    end
                    i32.const 0
                    local.set 2
                    local.get 3
                    i32.const -65588
                    i32.gt_u
                    br_if 1 (;@7;)
                    i32.const 16
                    local.get 3
                    i32.const 11
                    i32.add
                    i32.const -8
                    i32.and
                    local.get 3
                    i32.const 11
                    i32.lt_u
                    select
                    local.set 1
                    block  ;; label = @9
                      local.get 6
                      i32.eqz
                      if  ;; label = @10
                        local.get 1
                        i32.const 256
                        i32.lt_u
                        local.get 4
                        local.get 1
                        i32.const 4
                        i32.or
                        i32.lt_u
                        i32.or
                        local.get 4
                        local.get 1
                        i32.sub
                        i32.const 131073
                        i32.ge_u
                        i32.or
                        br_if 1 (;@9;)
                        br 9 (;@1;)
                      end
                      local.get 0
                      i32.const 8
                      i32.sub
                      local.tee 6
                      local.get 4
                      i32.add
                      local.set 8
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 1
                              local.get 4
                              i32.gt_u
                              if  ;; label = @14
                                local.get 8
                                i32.const 1052972
                                i32.load
                                i32.eq
                                br_if 4 (;@10;)
                                local.get 8
                                i32.const 1052968
                                i32.load
                                i32.eq
                                br_if 2 (;@12;)
                                local.get 8
                                i32.load offset=4
                                local.tee 7
                                i32.const 2
                                i32.and
                                br_if 5 (;@9;)
                                local.get 7
                                i32.const -8
                                i32.and
                                local.tee 7
                                local.get 4
                                i32.add
                                local.tee 4
                                local.get 1
                                i32.lt_u
                                br_if 5 (;@9;)
                                local.get 8
                                local.get 7
                                call 11
                                local.get 4
                                local.get 1
                                i32.sub
                                local.tee 2
                                i32.const 16
                                i32.lt_u
                                br_if 1 (;@13;)
                                local.get 5
                                local.get 1
                                local.get 5
                                i32.load
                                i32.const 1
                                i32.and
                                i32.or
                                i32.const 2
                                i32.or
                                i32.store
                                local.get 1
                                local.get 6
                                i32.add
                                local.tee 1
                                local.get 2
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 4
                                local.get 6
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 1
                                local.get 2
                                call 8
                                br 13 (;@1;)
                              end
                              local.get 4
                              local.get 1
                              i32.sub
                              local.tee 2
                              i32.const 15
                              i32.gt_u
                              br_if 2 (;@11;)
                              br 12 (;@1;)
                            end
                            local.get 5
                            local.get 4
                            local.get 5
                            i32.load
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 2
                            i32.or
                            i32.store
                            local.get 4
                            local.get 6
                            i32.add
                            local.tee 1
                            local.get 1
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            br 11 (;@1;)
                          end
                          i32.const 1052960
                          i32.load
                          local.get 4
                          i32.add
                          local.tee 4
                          local.get 1
                          i32.lt_u
                          br_if 2 (;@9;)
                          block  ;; label = @12
                            local.get 4
                            local.get 1
                            i32.sub
                            local.tee 3
                            i32.const 15
                            i32.le_u
                            if  ;; label = @13
                              local.get 5
                              local.get 7
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.or
                              i32.const 2
                              i32.or
                              i32.store
                              local.get 4
                              local.get 6
                              i32.add
                              local.tee 1
                              local.get 1
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.set 3
                              i32.const 0
                              local.set 1
                              br 1 (;@12;)
                            end
                            local.get 5
                            local.get 1
                            local.get 7
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 2
                            i32.or
                            i32.store
                            local.get 1
                            local.get 6
                            i32.add
                            local.tee 1
                            local.get 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 6
                            i32.add
                            local.tee 2
                            local.get 3
                            i32.store
                            local.get 2
                            local.get 2
                            i32.load offset=4
                            i32.const -2
                            i32.and
                            i32.store offset=4
                          end
                          i32.const 1052968
                          local.get 1
                          i32.store
                          i32.const 1052960
                          local.get 3
                          i32.store
                          br 10 (;@1;)
                        end
                        local.get 5
                        local.get 1
                        local.get 7
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 2
                        i32.or
                        i32.store
                        local.get 1
                        local.get 6
                        i32.add
                        local.tee 1
                        local.get 2
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 8
                        local.get 8
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 1
                        local.get 2
                        call 8
                        br 9 (;@1;)
                      end
                      i32.const 1052964
                      i32.load
                      local.get 4
                      i32.add
                      local.tee 4
                      local.get 1
                      i32.gt_u
                      br_if 7 (;@2;)
                    end
                    local.get 3
                    call 0
                    local.tee 1
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 1
                    local.get 0
                    i32.const -4
                    i32.const -8
                    local.get 5
                    i32.load
                    local.tee 1
                    i32.const 3
                    i32.and
                    select
                    local.get 1
                    i32.const -8
                    i32.and
                    i32.add
                    local.tee 1
                    local.get 3
                    local.get 1
                    local.get 3
                    i32.lt_u
                    select
                    call 13
                    local.get 0
                    call 5
                    return
                  end
                  local.get 2
                  local.get 0
                  local.get 1
                  local.get 3
                  local.get 1
                  local.get 3
                  i32.lt_u
                  select
                  call 13
                  drop
                  local.get 5
                  i32.load
                  local.tee 3
                  i32.const -8
                  i32.and
                  local.tee 5
                  local.get 1
                  i32.const 4
                  i32.const 8
                  local.get 3
                  i32.const 3
                  i32.and
                  local.tee 1
                  select
                  i32.add
                  i32.lt_u
                  br_if 3 (;@4;)
                  local.get 1
                  i32.const 0
                  local.get 5
                  local.get 8
                  i32.gt_u
                  select
                  br_if 4 (;@3;)
                  local.get 0
                  call 5
                end
                local.get 2
                return
              end
              i32.const 1052409
              i32.const 46
              i32.const 1052456
              call 32
              unreachable
            end
            i32.const 1052472
            i32.const 46
            i32.const 1052520
            call 32
            unreachable
          end
          i32.const 1052409
          i32.const 46
          i32.const 1052456
          call 32
          unreachable
        end
        i32.const 1052472
        i32.const 46
        i32.const 1052520
        call 32
        unreachable
      end
      local.get 5
      local.get 1
      local.get 7
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 1
      local.get 6
      i32.add
      local.tee 2
      local.get 4
      local.get 1
      i32.sub
      local.tee 1
      i32.const 1
      i32.or
      i32.store offset=4
      i32.const 1052964
      local.get 1
      i32.store
      i32.const 1052972
      local.get 2
      i32.store
      local.get 0
      return
    end
    local.get 0)
  (func (;8;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        local.get 0
        local.get 3
        i32.sub
        local.tee 0
        i32.const 1052968
        i32.load
        i32.eq
        if  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 1052960
          local.get 1
          i32.store
          local.get 2
          local.get 2
          i32.load offset=4
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        call 11
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            local.tee 3
            i32.const 2
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 2
              i32.const 1052972
              i32.load
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 1052968
              i32.load
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 3
              call 11
              local.get 0
              local.get 1
              local.get 3
              i32.add
              local.tee 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              local.get 0
              i32.const 1052968
              i32.load
              i32.ne
              br_if 1 (;@4;)
              i32.const 1052960
              local.get 1
              i32.store
              return
            end
            local.get 2
            local.get 3
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
          end
          local.get 1
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            i32.const 31
            local.set 2
            local.get 0
            i64.const 0
            i64.store offset=16 align=4
            local.get 1
            i32.const 16777215
            i32.le_u
            if  ;; label = @5
              local.get 1
              i32.const 6
              local.get 1
              i32.const 8
              i32.shr_u
              i32.clz
              local.tee 3
              i32.sub
              i32.shr_u
              i32.const 1
              i32.and
              local.get 3
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 2
            end
            local.get 0
            local.get 2
            i32.store offset=28
            local.get 2
            i32.const 2
            i32.shl
            i32.const 1052544
            i32.add
            local.set 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 3
            i32.const 1052956
            i32.load
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 4
              local.get 0
              i32.store
              local.get 0
              local.get 4
              i32.store offset=24
              local.get 0
              local.get 0
              i32.store offset=12
              local.get 0
              local.get 0
              i32.store offset=8
              i32.const 1052956
              i32.const 1052956
              i32.load
              local.get 3
              i32.or
              i32.store
              return
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                local.get 4
                i32.load
                local.tee 3
                i32.load offset=4
                i32.const -8
                i32.and
                i32.eq
                if  ;; label = @7
                  local.get 3
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 25
                local.get 2
                i32.const 1
                i32.shr_u
                i32.sub
                i32.const 0
                local.get 2
                i32.const 31
                i32.ne
                select
                i32.shl
                local.set 5
                loop  ;; label = @7
                  local.get 3
                  local.get 5
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 2
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 5
                  i32.const 1
                  i32.shl
                  local.set 5
                  local.get 2
                  local.set 3
                  local.get 2
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 1
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 2
              i32.load offset=8
              local.tee 1
              local.get 0
              i32.store offset=12
              local.get 2
              local.get 0
              i32.store offset=8
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              local.get 2
              i32.store offset=12
              local.get 0
              local.get 1
              i32.store offset=8
              return
            end
            local.get 4
            local.get 0
            i32.store
            local.get 0
            local.get 3
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 0
            i32.store offset=8
            return
          end
          local.get 1
          i32.const 248
          i32.and
          i32.const 1052688
          i32.add
          local.set 3
          block (result i32)  ;; label = @4
            i32.const 1052952
            i32.load
            local.tee 2
            i32.const 1
            local.get 1
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 1
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 1052952
              local.get 1
              local.get 2
              i32.or
              i32.store
              local.get 3
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=8
          end
          local.set 1
          local.get 3
          local.get 0
          i32.store offset=8
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=8
          return
        end
        i32.const 1052972
        local.get 0
        i32.store
        i32.const 1052964
        i32.const 1052964
        i32.load
        local.get 1
        i32.add
        local.tee 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        i32.const 1052968
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1052960
        i32.const 0
        i32.store
        i32.const 1052968
        i32.const 0
        i32.store
        return
      end
      i32.const 1052968
      local.get 0
      i32.store
      i32.const 1052960
      i32.const 1052960
      i32.load
      local.get 1
      i32.add
      local.tee 1
      i32.store
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.get 1
      i32.store
    end)
  (func (;9;) (type 7) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=28
    local.tee 7
    i32.const 1
    i32.and
    local.tee 10
    local.get 4
    i32.add
    local.set 6
    block  ;; label = @1
      local.get 7
      i32.const 4
      i32.and
      i32.eqz
      if  ;; label = @2
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.eqz
        if  ;; label = @3
          br 1 (;@2;)
        end
        local.get 2
        i32.const 3
        i32.and
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.set 5
        loop  ;; label = @3
          local.get 8
          local.get 5
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 9
          i32.const 1
          i32.sub
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      local.get 6
      local.get 8
      i32.add
      local.set 6
    end
    i32.const 43
    i32.const 1114112
    local.get 10
    select
    local.set 8
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load offset=20
      local.tee 5
      local.get 0
      i32.load offset=24
      local.tee 0
      local.get 8
      local.get 1
      local.get 2
      call 33
      if  ;; label = @2
        i32.const 1
        return
      end
      local.get 5
      local.get 3
      local.get 4
      local.get 0
      i32.load offset=12
      call_indirect (type 1)
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          local.get 0
          i32.load offset=4
          local.tee 9
          i32.ge_u
          if  ;; label = @4
            local.get 0
            i32.load offset=20
            local.tee 5
            local.get 0
            i32.load offset=24
            local.tee 0
            local.get 8
            local.get 1
            local.get 2
            call 33
            i32.eqz
            br_if 1 (;@3;)
            i32.const 1
            return
          end
          local.get 7
          i32.const 8
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=16
          local.set 11
          local.get 0
          i32.const 48
          i32.store offset=16
          local.get 0
          i32.load8_u offset=32
          local.set 12
          i32.const 1
          local.set 5
          local.get 0
          i32.const 1
          i32.store8 offset=32
          local.get 0
          i32.load offset=20
          local.tee 7
          local.get 0
          i32.load offset=24
          local.tee 10
          local.get 8
          local.get 1
          local.get 2
          call 33
          br_if 2 (;@1;)
          local.get 9
          local.get 6
          i32.sub
          i32.const 1
          i32.add
          local.set 5
          block  ;; label = @4
            loop  ;; label = @5
              local.get 5
              i32.const 1
              i32.sub
              local.tee 5
              i32.eqz
              br_if 1 (;@4;)
              local.get 7
              i32.const 48
              local.get 10
              i32.load offset=16
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
            end
            i32.const 1
            return
          end
          local.get 7
          local.get 3
          local.get 4
          local.get 10
          i32.load offset=12
          call_indirect (type 1)
          if  ;; label = @4
            i32.const 1
            return
          end
          local.get 0
          local.get 12
          i32.store8 offset=32
          local.get 0
          local.get 11
          i32.store offset=16
          i32.const 0
          return
        end
        local.get 5
        local.get 3
        local.get 4
        local.get 0
        i32.load offset=12
        call_indirect (type 1)
        local.set 5
        br 1 (;@1;)
      end
      local.get 9
      local.get 6
      i32.sub
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=32
            local.tee 5
            i32.const 1
            i32.sub
            br_table 0 (;@4;) 1 (;@3;) 0 (;@4;) 2 (;@2;)
          end
          local.get 6
          local.set 5
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 6
        i32.const 1
        i32.shr_u
        local.set 5
        local.get 6
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 6
      end
      local.get 5
      i32.const 1
      i32.add
      local.set 5
      local.get 0
      i32.load offset=16
      local.set 9
      local.get 0
      i32.load offset=24
      local.set 7
      local.get 0
      i32.load offset=20
      local.set 0
      block  ;; label = @2
        loop  ;; label = @3
          local.get 5
          i32.const 1
          i32.sub
          local.tee 5
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 9
          local.get 7
          i32.load offset=16
          call_indirect (type 0)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 5
      local.get 0
      local.get 7
      local.get 8
      local.get 1
      local.get 2
      call 33
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 4
      local.get 7
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      i32.const 0
      local.set 5
      loop  ;; label = @2
        local.get 5
        local.get 6
        i32.eq
        if  ;; label = @3
          i32.const 0
          return
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        local.get 0
        local.get 9
        local.get 7
        i32.load offset=16
        call_indirect (type 0)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 1
      i32.sub
      local.get 6
      i32.lt_u
      return
    end
    local.get 5)
  (func (;10;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      i32.const -65587
      i32.const 16
      local.get 0
      local.get 0
      i32.const 16
      i32.le_u
      select
      local.tee 0
      i32.sub
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      local.get 1
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 4
      i32.add
      i32.const 12
      i32.add
      call 0
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 8
      i32.sub
      local.set 1
      block  ;; label = @2
        local.get 0
        i32.const 1
        i32.sub
        local.tee 3
        local.get 2
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 1
          local.set 0
          br 1 (;@2;)
        end
        local.get 2
        i32.const 4
        i32.sub
        local.tee 5
        i32.load
        local.tee 6
        i32.const -8
        i32.and
        local.get 2
        local.get 3
        i32.add
        i32.const 0
        local.get 0
        i32.sub
        i32.and
        i32.const 8
        i32.sub
        local.tee 2
        local.get 0
        i32.const 0
        local.get 2
        local.get 1
        i32.sub
        i32.const 16
        i32.le_u
        select
        i32.add
        local.tee 0
        local.get 1
        i32.sub
        local.tee 2
        i32.sub
        local.set 3
        local.get 6
        i32.const 3
        i32.and
        if  ;; label = @3
          local.get 0
          local.get 3
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.tee 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 5
          local.get 2
          local.get 5
          i32.load
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 1
          local.get 2
          i32.add
          local.tee 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 2
          call 8
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 1
        local.get 0
        local.get 3
        i32.store offset=4
        local.get 0
        local.get 1
        local.get 2
        i32.add
        i32.store
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        local.tee 2
        local.get 4
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        local.get 1
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store offset=4
        local.get 0
        local.get 4
        i32.add
        local.tee 1
        local.get 2
        local.get 4
        i32.sub
        local.tee 4
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 4
        call 8
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 3
    end
    local.get 3)
  (func (;11;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 256
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i32.load offset=24
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 2
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const 20
                i32.const 16
                local.get 0
                i32.load offset=20
                local.tee 2
                select
                i32.add
                i32.load
                local.tee 1
                br_if 1 (;@5;)
                i32.const 0
                local.set 2
                br 2 (;@4;)
              end
              local.get 0
              i32.load offset=8
              local.tee 1
              local.get 2
              i32.store offset=12
              local.get 2
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            i32.const 20
            i32.add
            local.get 0
            i32.const 16
            i32.add
            local.get 2
            select
            local.set 4
            loop  ;; label = @5
              local.get 4
              local.set 5
              local.get 1
              local.tee 2
              i32.const 20
              i32.add
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.load offset=20
              local.tee 1
              select
              local.set 4
              local.get 2
              i32.const 20
              i32.const 16
              local.get 1
              select
              i32.add
              i32.load
              local.tee 1
              br_if 0 (;@5;)
            end
            local.get 5
            i32.const 0
            i32.store
          end
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 0
          i32.load offset=28
          i32.const 2
          i32.shl
          i32.const 1052544
          i32.add
          local.tee 1
          i32.load
          i32.ne
          if  ;; label = @4
            local.get 3
            i32.const 16
            i32.const 20
            local.get 3
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 2
            i32.store
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          local.get 1
          local.get 2
          i32.store
          local.get 2
          br_if 1 (;@2;)
          i32.const 1052956
          i32.const 1052956
          i32.load
          i32.const -2
          local.get 0
          i32.load offset=28
          i32.rotl
          i32.and
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=8
        local.tee 0
        local.get 2
        i32.ne
        if  ;; label = @3
          local.get 0
          local.get 2
          i32.store offset=12
          local.get 2
          local.get 0
          i32.store offset=8
          return
        end
        i32.const 1052952
        i32.const 1052952
        i32.load
        i32.const -2
        local.get 1
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store
        return
      end
      local.get 2
      local.get 3
      i32.store offset=24
      local.get 0
      i32.load offset=16
      local.tee 1
      if  ;; label = @2
        local.get 2
        local.get 1
        i32.store offset=16
        local.get 1
        local.get 2
        i32.store offset=24
      end
      local.get 0
      i32.load offset=20
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.store offset=20
      local.get 0
      local.get 2
      i32.store offset=24
    end)
  (func (;12;) (type 10) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 2
    i32.const 1
    i32.shl
    i32.add
    local.set 9
    local.get 0
    i32.const 65280
    i32.and
    i32.const 8
    i32.shr_u
    local.set 10
    local.get 0
    i32.const 255
    i32.and
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              i32.const 2
              i32.add
              local.set 11
              local.get 7
              local.get 1
              i32.load8_u offset=1
              local.tee 2
              i32.add
              local.set 8
              local.get 10
              local.get 1
              i32.load8_u
              local.tee 1
              i32.ne
              if  ;; label = @6
                local.get 1
                local.get 10
                i32.gt_u
                br_if 4 (;@2;)
                local.get 8
                local.set 7
                local.get 11
                local.tee 1
                local.get 9
                i32.ne
                br_if 1 (;@5;)
                br 4 (;@2;)
              end
              local.get 7
              local.get 8
              i32.gt_u
              br_if 1 (;@4;)
              local.get 4
              local.get 8
              i32.lt_u
              br_if 2 (;@3;)
              local.get 3
              local.get 7
              i32.add
              local.set 1
              loop  ;; label = @6
                local.get 2
                i32.eqz
                if  ;; label = @7
                  local.get 8
                  local.set 7
                  local.get 11
                  local.tee 1
                  local.get 9
                  i32.ne
                  br_if 2 (;@5;)
                  br 5 (;@2;)
                end
                local.get 2
                i32.const 1
                i32.sub
                local.set 2
                local.get 1
                i32.load8_u
                local.get 1
                i32.const 1
                i32.add
                local.set 1
                local.get 12
                i32.ne
                br_if 0 (;@6;)
              end
            end
            i32.const 0
            local.set 2
            br 3 (;@1;)
          end
          local.get 7
          local.get 8
          i32.const 1049752
          call 26
          unreachable
        end
        global.get 0
        i32.const 48
        i32.sub
        local.tee 0
        global.set 0
        local.get 0
        local.get 8
        i32.store
        local.get 0
        local.get 4
        i32.store offset=4
        local.get 0
        i32.const 2
        i32.store offset=12
        local.get 0
        i32.const 1049376
        i32.store offset=8
        local.get 0
        i64.const 2
        i64.store offset=20 align=4
        local.get 0
        local.get 0
        i32.const 4
        i32.add
        i64.extend_i32_u
        i64.const 12884901888
        i64.or
        i64.store offset=40
        local.get 0
        local.get 0
        i64.extend_i32_u
        i64.const 12884901888
        i64.or
        i64.store offset=32
        local.get 0
        local.get 0
        i32.const 32
        i32.add
        i32.store offset=16
        local.get 0
        i32.const 8
        i32.add
        i32.const 1049752
        call 36
        unreachable
      end
      local.get 0
      i32.const 65535
      i32.and
      local.set 7
      local.get 5
      local.get 6
      i32.add
      local.set 3
      i32.const 1
      local.set 2
      loop  ;; label = @2
        local.get 5
        i32.const 1
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 5
          i32.load8_s
          local.tee 1
          i32.const 0
          i32.ge_s
          if  ;; label = @4
            local.get 0
            local.set 5
            br 1 (;@3;)
          end
          local.get 0
          local.get 3
          i32.ne
          if  ;; label = @4
            local.get 5
            i32.load8_u offset=1
            local.get 1
            i32.const 127
            i32.and
            i32.const 8
            i32.shl
            i32.or
            local.set 1
            local.get 5
            i32.const 2
            i32.add
            local.set 5
            br 1 (;@3;)
          end
          i32.const 1049736
          call 41
          unreachable
        end
        local.get 7
        local.get 1
        i32.sub
        local.tee 7
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
        local.get 2
        i32.const 1
        i32.xor
        local.set 2
        local.get 3
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 1
    i32.and)
  (func (;13;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const 16
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      local.get 4
      if  ;; label = @2
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 8
      i32.const -4
      i32.and
      local.tee 7
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 1
        local.get 4
        i32.add
        local.tee 4
        i32.const 3
        i32.and
        if  ;; label = @3
          local.get 7
          i32.const 0
          i32.le_s
          br_if 1 (;@2;)
          local.get 4
          i32.const 3
          i32.shl
          local.tee 2
          i32.const 24
          i32.and
          local.set 9
          local.get 4
          i32.const -4
          i32.and
          local.tee 6
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 2
          i32.sub
          i32.const 24
          i32.and
          local.set 2
          local.get 6
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 5
            local.get 6
            local.get 9
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 2
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        local.get 7
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        local.get 4
        local.set 1
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 3
      i32.and
      local.set 2
      local.get 4
      local.get 7
      i32.add
      local.set 1
    end
    local.get 2
    if  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;14;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.const 128
      i32.ge_u
      if  ;; label = @2
        local.get 2
        i32.const 0
        i32.store offset=12
        block (result i32)  ;; label = @3
          local.get 1
          i32.const 2048
          i32.ge_u
          if  ;; label = @4
            local.get 1
            i32.const 65536
            i32.ge_u
            if  ;; label = @5
              local.get 2
              i32.const 12
              i32.add
              i32.const 3
              i32.or
              local.set 4
              local.get 2
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 240
              i32.or
              i32.store8 offset=12
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 4
              br 2 (;@3;)
            end
            local.get 2
            i32.const 12
            i32.add
            i32.const 2
            i32.or
            local.set 4
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            br 1 (;@3;)
          end
          local.get 2
          i32.const 12
          i32.add
          i32.const 1
          i32.or
          local.set 4
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8 offset=12
          i32.const 2
        end
        local.set 3
        local.get 4
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8
        local.get 3
        local.get 0
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 1
        i32.sub
        i32.gt_u
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 3
          call 19
          local.get 0
          i32.load offset=8
          local.set 1
        end
        local.get 0
        i32.load offset=4
        local.get 1
        i32.add
        local.get 2
        i32.const 12
        i32.add
        local.get 3
        call 13
        drop
        local.get 0
        local.get 1
        local.get 3
        i32.add
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=8
      local.tee 3
      local.get 0
      i32.load
      i32.eq
      if  ;; label = @2
        local.get 0
        call 20
      end
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      i32.store offset=8
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      i32.store8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;15;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const 10
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.const 10000
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 4
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 3
        i32.const 6
        i32.add
        local.get 2
        i32.add
        local.tee 5
        i32.const 4
        i32.sub
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 4
        i32.const 55536
        i32.mul
        local.get 0
        i32.add
        local.tee 6
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 7
        i32.const 1
        i32.shl
        i32.const 1049090
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 5
        i32.const 2
        i32.sub
        local.get 7
        i32.const -100
        i32.mul
        local.get 6
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1049090
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        i32.const 4
        i32.sub
        local.set 2
        local.get 0
        i32.const 99999999
        i32.gt_u
        local.get 4
        local.set 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 4
      i32.const 99
      i32.le_u
      if  ;; label = @2
        local.get 4
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 2
      i32.sub
      local.tee 2
      local.get 3
      i32.const 6
      i32.add
      i32.add
      local.get 4
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const -100
      i32.mul
      local.get 4
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1049090
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      local.get 0
      i32.const 10
      i32.ge_u
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.sub
        local.tee 2
        local.get 3
        i32.const 6
        i32.add
        i32.add
        local.get 0
        i32.const 1
        i32.shl
        i32.const 1049090
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1
      i32.sub
      local.tee 2
      local.get 3
      i32.const 6
      i32.add
      i32.add
      local.get 0
      i32.const 48
      i32.or
      i32.store8
    end
    local.get 1
    i32.const 1
    i32.const 0
    local.get 3
    i32.const 6
    i32.add
    local.get 2
    i32.add
    i32.const 10
    local.get 2
    i32.sub
    call 9
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;16;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    i32.const 31
    local.set 2
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 1
    i32.const 16777215
    i32.le_u
    if  ;; label = @1
      local.get 1
      i32.const 6
      local.get 1
      i32.const 8
      i32.shr_u
      i32.clz
      local.tee 3
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 3
      i32.const 1
      i32.shl
      i32.sub
      i32.const 62
      i32.add
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1052544
    i32.add
    local.set 4
    i32.const 1
    local.get 2
    i32.shl
    local.tee 3
    i32.const 1052956
    i32.load
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 4
      local.get 0
      i32.store
      local.get 0
      local.get 4
      i32.store offset=24
      local.get 0
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 0
      i32.store offset=8
      i32.const 1052956
      i32.const 1052956
      i32.load
      local.get 3
      i32.or
      i32.store
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 4
        i32.load
        local.tee 3
        i32.load offset=4
        i32.const -8
        i32.and
        i32.eq
        if  ;; label = @3
          local.get 3
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        i32.const 0
        local.get 2
        i32.const 31
        i32.ne
        select
        i32.shl
        local.set 5
        loop  ;; label = @3
          local.get 3
          local.get 5
          i32.const 29
          i32.shr_u
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 4
          i32.load
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 5
          i32.const 1
          i32.shl
          local.set 5
          local.get 2
          local.set 3
          local.get 2
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
      return
    end
    local.get 4
    local.get 0
    i32.store
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8)
  (func (;17;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 4
    global.set 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=28
          local.tee 2
          i32.const 16
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 2
            i32.const 32
            i32.and
            br_if 1 (;@3;)
            local.get 0
            local.get 1
            call 15
            br 3 (;@1;)
          end
          i32.const 127
          local.set 2
          loop  ;; label = @4
            local.get 4
            local.get 2
            local.tee 3
            i32.add
            local.tee 5
            local.get 0
            i32.const 15
            i32.and
            local.tee 2
            i32.const 48
            i32.or
            local.get 2
            i32.const 87
            i32.add
            local.get 2
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get 3
            i32.const 1
            i32.sub
            local.set 2
            local.get 0
            i32.const 16
            i32.lt_u
            local.get 0
            i32.const 4
            i32.shr_u
            local.set 0
            i32.eqz
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        i32.const 127
        local.set 2
        loop  ;; label = @3
          local.get 4
          local.get 2
          local.tee 3
          i32.add
          local.tee 5
          local.get 0
          i32.const 15
          i32.and
          local.tee 2
          i32.const 48
          i32.or
          local.get 2
          i32.const 55
          i32.add
          local.get 2
          i32.const 10
          i32.lt_u
          select
          i32.store8
          local.get 3
          i32.const 1
          i32.sub
          local.set 2
          local.get 0
          i32.const 16
          i32.lt_u
          local.get 0
          i32.const 4
          i32.shr_u
          local.set 0
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 3
        i32.const 129
        i32.ge_u
        if  ;; label = @3
          local.get 3
          call 24
          unreachable
        end
        local.get 1
        i32.const 1049088
        i32.const 2
        local.get 5
        i32.const 128
        local.get 3
        i32.sub
        call 9
        br 1 (;@1;)
      end
      local.get 3
      i32.const 129
      i32.ge_u
      if  ;; label = @2
        local.get 3
        call 24
        unreachable
      end
      local.get 1
      i32.const 1049088
      i32.const 2
      local.get 5
      i32.const 128
      local.get 3
      i32.sub
      call 9
    end
    local.get 4
    i32.const 128
    i32.add
    global.set 0)
  (func (;18;) (type 3) (param i32 i32 i32)
    local.get 2
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.const 136
      i32.mul
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 0
        local.get 0
        i64.load
        local.get 1
        i64.load align=1
        i64.xor
        i64.store
        local.get 0
        local.get 0
        i64.load offset=8
        local.get 1
        i64.load offset=8 align=1
        i64.xor
        i64.store offset=8
        local.get 0
        local.get 0
        i64.load offset=16
        local.get 1
        i64.load offset=16 align=1
        i64.xor
        i64.store offset=16
        local.get 0
        local.get 0
        i64.load offset=24
        local.get 1
        i64.load offset=24 align=1
        i64.xor
        i64.store offset=24
        local.get 0
        local.get 0
        i64.load offset=32
        local.get 1
        i64.load offset=32 align=1
        i64.xor
        i64.store offset=32
        local.get 0
        local.get 0
        i64.load offset=40
        local.get 1
        i64.load offset=40 align=1
        i64.xor
        i64.store offset=40
        local.get 0
        local.get 0
        i64.load offset=48
        local.get 1
        i64.load offset=48 align=1
        i64.xor
        i64.store offset=48
        local.get 0
        local.get 0
        i64.load offset=56
        local.get 1
        i64.load offset=56 align=1
        i64.xor
        i64.store offset=56
        local.get 0
        local.get 0
        i64.load offset=64
        local.get 1
        i64.load offset=64 align=1
        i64.xor
        i64.store offset=64
        local.get 0
        local.get 0
        i64.load offset=72
        local.get 1
        i64.load offset=72 align=1
        i64.xor
        i64.store offset=72
        local.get 0
        local.get 0
        i64.load offset=80
        local.get 1
        i64.load offset=80 align=1
        i64.xor
        i64.store offset=80
        local.get 0
        local.get 0
        i64.load offset=88
        local.get 1
        i64.load offset=88 align=1
        i64.xor
        i64.store offset=88
        local.get 0
        local.get 0
        i64.load offset=96
        local.get 1
        i64.load offset=96 align=1
        i64.xor
        i64.store offset=96
        local.get 0
        local.get 0
        i64.load offset=104
        local.get 1
        i64.load offset=104 align=1
        i64.xor
        i64.store offset=104
        local.get 0
        local.get 0
        i64.load offset=112
        local.get 1
        i64.load offset=112 align=1
        i64.xor
        i64.store offset=112
        local.get 0
        local.get 0
        i64.load offset=120
        local.get 1
        i64.load offset=120 align=1
        i64.xor
        i64.store offset=120
        local.get 0
        local.get 0
        i64.load offset=128
        local.get 1
        i64.load offset=128 align=1
        i64.xor
        i64.store offset=128
        local.get 0
        call 4
        local.get 1
        i32.const 136
        i32.add
        local.tee 1
        local.get 2
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func (;19;) (type 3) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    local.get 1
    local.get 2
    i32.add
    local.tee 2
    i32.gt_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      call 40
      unreachable
    end
    i32.const 8
    local.get 0
    i32.load
    local.tee 1
    i32.const 1
    i32.shl
    local.tee 4
    local.get 2
    local.get 2
    local.get 4
    i32.lt_u
    select
    local.tee 2
    local.get 2
    i32.const 8
    i32.le_u
    select
    local.tee 4
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 0
      i32.const 0
      call 40
      unreachable
    end
    local.get 3
    local.get 1
    if (result i32)  ;; label = @1
      local.get 3
      local.get 1
      i32.store offset=28
      local.get 3
      local.get 0
      i32.load offset=4
      i32.store offset=20
      i32.const 1
    else
      i32.const 0
    end
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 4
    local.get 3
    i32.const 20
    i32.add
    call 29
    local.get 3
    i32.load offset=8
    i32.const 1
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      call 40
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;20;) (type 4) (param i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load
    local.tee 2
    i32.const -1
    i32.eq
    if  ;; label = @1
      i32.const 0
      i32.const 0
      call 40
      unreachable
    end
    i32.const 8
    local.get 2
    i32.const 1
    i32.shl
    local.tee 3
    local.get 2
    i32.const 1
    i32.add
    local.tee 4
    local.get 3
    local.get 4
    i32.gt_u
    select
    local.tee 3
    local.get 3
    i32.const 8
    i32.le_u
    select
    local.tee 3
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 0
      i32.const 0
      call 40
      unreachable
    end
    local.get 1
    local.get 2
    if (result i32)  ;; label = @1
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      local.get 0
      i32.load offset=4
      i32.store offset=20
      i32.const 1
    else
      i32.const 0
    end
    i32.store offset=24
    local.get 1
    i32.const 8
    i32.add
    local.get 3
    local.get 1
    i32.const 20
    i32.add
    call 29
    local.get 1
    i32.load offset=8
    i32.const 1
    i32.eq
    if  ;; label = @1
      local.get 1
      i32.load offset=12
      local.get 1
      i32.load offset=16
      call 40
      unreachable
    end
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;21;) (type 2) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.const 16
    i32.ge_u
    if  ;; label = @1
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 3
      i32.add
      local.set 2
      local.get 3
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.const 0
          i32.store8
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 1
      local.get 3
      i32.sub
      local.tee 1
      i32.const -4
      i32.and
      local.tee 3
      i32.add
      local.set 0
      local.get 3
      i32.const 0
      i32.gt_s
      if  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.const 0
          i32.store
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          local.get 0
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 1
      i32.const 3
      i32.and
      local.set 1
    end
    local.get 1
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 0
        i32.const 0
        i32.store8
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
      end
    end)
  (func (;22;) (type 4) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        if  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 0
          i32.const 4
          i32.sub
          i32.load
          local.tee 1
          i32.const -8
          i32.and
          local.tee 3
          i32.const 4
          i32.const 8
          local.get 1
          i32.const 3
          i32.and
          local.tee 1
          select
          local.get 2
          i32.add
          i32.lt_u
          br_if 1 (;@2;)
          local.get 1
          i32.const 0
          local.get 3
          local.get 2
          i32.const 39
          i32.add
          i32.gt_u
          select
          br_if 2 (;@1;)
          local.get 0
          call 5
        end
        return
      end
      i32.const 1052409
      i32.const 46
      i32.const 1052456
      call 32
      unreachable
    end
    i32.const 1052472
    i32.const 46
    i32.const 1052520
    call 32
    unreachable)
  (func (;23;) (type 8) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    i32.const 1052540
    i32.const 1052540
    i32.load
    local.tee 4
    i32.const 1
    i32.add
    i32.store
    block  ;; label = @1
      local.get 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 1053000
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          i32.const 1052996
          i32.const 1052996
          i32.load
          i32.const 1
          i32.add
          i32.store
          i32.const 1052536
          i32.load
          i32.const 0
          i32.ge_s
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 0
        local.get 1
        call_indirect (type 2)
        unreachable
      end
      i32.const 1053000
      i32.const 0
      i32.store8
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      unreachable
    end
    unreachable)
  (func (;24;) (type 4) (param i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.const 128
    i32.store offset=4
    local.get 1
    i32.const 2
    i32.store offset=12
    local.get 1
    i32.const 1049344
    i32.store offset=8
    local.get 1
    i64.const 2
    i64.store offset=20 align=4
    local.get 1
    i64.const 12884901888
    local.tee 2
    local.get 1
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 1
    local.get 2
    local.get 1
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 8
    i32.add
    i32.const 1049072
    call 36
    unreachable)
  (func (;25;) (type 3) (param i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1049016
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 12884901888
    local.tee 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call 36
    unreachable)
  (func (;26;) (type 3) (param i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1049428
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i64.const 12884901888
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call 36
    unreachable)
  (func (;27;) (type 3) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.sub
          i32.load
          local.tee 2
          i32.const -8
          i32.and
          local.tee 3
          i32.const 4
          i32.const 8
          local.get 2
          i32.const 3
          i32.and
          local.tee 2
          select
          local.get 1
          i32.add
          i32.lt_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 0
          local.get 3
          local.get 1
          i32.const 39
          i32.add
          i32.gt_u
          select
          br_if 2 (;@1;)
          local.get 0
          call 5
        end
        return
      end
      i32.const 1052409
      i32.const 46
      i32.const 1052456
      call 32
      unreachable
    end
    i32.const 1052472
    i32.const 46
    i32.const 1052520
    call 32
    unreachable)
  (func (;28;) (type 2) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.sub
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 3
      i32.const 4
      i32.const 8
      local.get 2
      i32.const 3
      i32.and
      local.tee 2
      select
      local.get 1
      i32.add
      i32.ge_u
      if  ;; label = @2
        local.get 2
        i32.const 0
        local.get 3
        local.get 1
        i32.const 39
        i32.add
        i32.gt_u
        select
        br_if 1 (;@1;)
        local.get 0
        call 5
        return
      end
      i32.const 1052409
      i32.const 46
      i32.const 1052456
      call 32
      unreachable
    end
    i32.const 1052472
    i32.const 46
    i32.const 1052520
    call 32
    unreachable)
  (func (;29;) (type 3) (param i32 i32 i32)
    (local i32)
    block (result i32)  ;; label = @1
      local.get 2
      i32.load offset=4
      if  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=8
          local.tee 3
          i32.eqz
          if  ;; label = @4
            br 1 (;@3;)
          end
          local.get 2
          i32.load
          local.get 3
          i32.const 1
          local.get 1
          call 7
          br 2 (;@1;)
        end
      end
      i32.const 1053001
      i32.load8_u
      drop
      local.get 1
      call 0
    end
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 1
    local.get 2
    select
    i32.store offset=4
    local.get 0
    local.get 2
    i32.eqz
    i32.store)
  (func (;30;) (type 0) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      i32.popcnt
      i32.const 1
      i32.ne
      i32.const -2147483648
      local.get 1
      i32.sub
      local.get 0
      i32.lt_u
      i32.or
      br_if 0 (;@1;)
      local.get 0
      if  ;; label = @2
        i32.const 1053001
        i32.load8_u
        drop
        block (result i32)  ;; label = @3
          local.get 1
          i32.const 9
          i32.ge_u
          if  ;; label = @4
            local.get 1
            local.get 0
            call 10
            br 1 (;@3;)
          end
          local.get 0
          call 0
        end
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      return
    end
    unreachable)
  (func (;31;) (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.sub
    i32.gt_u
    if  ;; label = @1
      local.get 0
      local.get 3
      local.get 2
      call 19
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 0
    i32.load offset=4
    local.get 3
    i32.add
    local.get 1
    local.get 2
    call 13
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;32;) (type 3) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    i32.const 1
    i32.store offset=4
    local.get 3
    i64.const 4
    i64.store offset=8 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call 36
    unreachable)
  (func (;33;) (type 7) (param i32 i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 0)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 3
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 1))
  (func (;34;) (type 0) (param i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load
      local.get 1
      call 17
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=20
      i32.const 1048904
      i32.const 2
      local.get 1
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 1)
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      call 17
      local.set 2
    end
    local.get 2)
  (func (;35;) (type 6) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 3
      i32.popcnt
      i32.const 1
      i32.ne
      i32.const -2147483648
      local.get 3
      i32.sub
      local.get 1
      i32.lt_u
      i32.or
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 3
        local.get 2
        call 7
        local.tee 0
        br_if 1 (;@1;)
      end
      unreachable
    end
    local.get 0)
  (func (;36;) (type 2) (param i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 1
    i32.store16 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=4
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 2
    i32.const 4
    i32.add
    local.tee 0
    i64.load align=4
    local.set 4
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    local.get 4
    i64.store offset=4 align=4
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 1
    i32.const 4
    i32.add
    local.tee 1
    i32.load
    local.tee 2
    i32.load offset=12
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 3
          br_if 1 (;@2;)
          i32.const 1
          local.set 2
          i32.const 0
          local.set 3
          br 2 (;@1;)
        end
        local.get 3
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.tee 2
        i32.load offset=4
        local.set 3
        local.get 2
        i32.load
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const -2147483648
      i32.store
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      i32.const 6
      local.get 1
      i32.load offset=8
      local.tee 0
      i32.load8_u offset=8
      local.get 0
      i32.load8_u offset=9
      call 23
      unreachable
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 0
    i32.const 7
    local.get 1
    i32.load offset=8
    local.tee 0
    i32.load8_u offset=8
    local.get 0
    i32.load8_u offset=9
    call 23
    unreachable)
  (func (;37;) (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1048576
    i32.const 5
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 1))
  (func (;38;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 0))
  (func (;39;) (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 3
    i32.store offset=12
    local.get 4
    local.get 2
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block (result i32)  ;; label = @7
                  local.get 0
                  block (result i32)  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 257
                      i32.ge_u
                      if  ;; label = @10
                        i32.const 3
                        local.get 0
                        i32.load8_s offset=256
                        i32.const -65
                        i32.gt_s
                        br_if 2 (;@8;)
                        drop
                        local.get 0
                        i32.load8_s offset=255
                        i32.const -65
                        i32.le_s
                        br_if 1 (;@9;)
                        i32.const 2
                        br 2 (;@8;)
                      end
                      local.get 4
                      local.get 1
                      i32.store offset=20
                      local.get 4
                      local.get 0
                      i32.store offset=16
                      i32.const 1
                      br 2 (;@7;)
                    end
                    local.get 0
                    i32.load8_s offset=254
                    i32.const -65
                    i32.gt_s
                  end
                  i32.const 253
                  i32.add
                  local.tee 5
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.le_s
                  br_if 1 (;@6;)
                  local.get 4
                  local.get 5
                  i32.store offset=20
                  local.get 4
                  local.get 0
                  i32.store offset=16
                  i32.const 5
                  local.set 6
                  i32.const 1049444
                end
                local.set 5
                local.get 4
                local.get 6
                i32.store offset=28
                local.get 4
                local.get 5
                i32.store offset=24
                local.get 1
                local.get 2
                i32.lt_u
                local.tee 6
                local.get 1
                local.get 3
                i32.lt_u
                i32.or
                i32.eqz
                if  ;; label = @7
                  local.get 2
                  local.get 3
                  i32.gt_u
                  br_if 2 (;@5;)
                  local.get 2
                  i32.eqz
                  local.get 1
                  local.get 2
                  i32.le_u
                  i32.or
                  i32.eqz
                  if  ;; label = @8
                    local.get 3
                    local.get 2
                    local.get 0
                    local.get 2
                    i32.add
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    select
                    local.set 3
                  end
                  local.get 4
                  local.get 3
                  i32.store offset=32
                  local.get 3
                  local.get 1
                  local.tee 2
                  i32.lt_u
                  if  ;; label = @8
                    local.get 3
                    i32.const 1
                    i32.add
                    local.tee 7
                    local.get 3
                    i32.const 3
                    i32.sub
                    local.tee 2
                    i32.const 0
                    local.get 2
                    local.get 3
                    i32.le_u
                    select
                    local.tee 2
                    i32.lt_u
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 2
                      local.get 7
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 7
                      local.get 2
                      i32.sub
                      local.set 6
                      local.get 0
                      local.get 3
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      if  ;; label = @10
                        local.get 6
                        i32.const 1
                        i32.sub
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 2
                      local.get 3
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 7
                      i32.add
                      local.tee 3
                      i32.const 2
                      i32.sub
                      local.tee 8
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      if  ;; label = @10
                        local.get 6
                        i32.const 2
                        i32.sub
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 8
                      local.get 0
                      local.get 2
                      i32.add
                      local.tee 7
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 3
                      i32.sub
                      local.tee 8
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      if  ;; label = @10
                        local.get 6
                        i32.const 3
                        i32.sub
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 7
                      local.get 8
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 3
                      i32.const 4
                      i32.sub
                      local.tee 3
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      if  ;; label = @10
                        local.get 6
                        i32.const 4
                        i32.sub
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 3
                      local.get 7
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 5
                      i32.sub
                      local.set 5
                    end
                    local.get 2
                    local.get 5
                    i32.add
                    local.set 2
                  end
                  block  ;; label = @8
                    local.get 2
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 1
                    local.get 2
                    i32.gt_u
                    if  ;; label = @9
                      local.get 0
                      local.get 2
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      br_if 1 (;@8;)
                      br 7 (;@2;)
                    end
                    local.get 1
                    local.get 2
                    i32.ne
                    br_if 6 (;@2;)
                  end
                  local.get 1
                  local.get 2
                  i32.eq
                  br_if 4 (;@3;)
                  block (result i32)  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        local.get 2
                        i32.add
                        local.tee 1
                        i32.load8_s
                        local.tee 0
                        i32.const 0
                        i32.lt_s
                        if  ;; label = @11
                          local.get 1
                          i32.load8_u offset=1
                          i32.const 63
                          i32.and
                          local.set 5
                          local.get 0
                          i32.const 31
                          i32.and
                          local.set 3
                          local.get 0
                          i32.const -33
                          i32.gt_u
                          br_if 1 (;@10;)
                          local.get 3
                          i32.const 6
                          i32.shl
                          local.get 5
                          i32.or
                          local.set 0
                          br 2 (;@9;)
                        end
                        local.get 4
                        local.get 0
                        i32.const 255
                        i32.and
                        i32.store offset=36
                        i32.const 1
                        br 2 (;@8;)
                      end
                      local.get 1
                      i32.load8_u offset=2
                      i32.const 63
                      i32.and
                      local.get 5
                      i32.const 6
                      i32.shl
                      i32.or
                      local.set 5
                      local.get 0
                      i32.const -16
                      i32.lt_u
                      if  ;; label = @10
                        local.get 5
                        local.get 3
                        i32.const 12
                        i32.shl
                        i32.or
                        local.set 0
                        br 1 (;@9;)
                      end
                      local.get 3
                      i32.const 18
                      i32.shl
                      i32.const 1835008
                      i32.and
                      local.get 1
                      i32.load8_u offset=3
                      i32.const 63
                      i32.and
                      local.get 5
                      i32.const 6
                      i32.shl
                      i32.or
                      i32.or
                      local.tee 0
                      i32.const 1114112
                      i32.eq
                      br_if 6 (;@3;)
                    end
                    local.get 4
                    local.get 0
                    i32.store offset=36
                    i32.const 1
                    local.get 0
                    i32.const 128
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    i32.const 2
                    local.get 0
                    i32.const 2048
                    i32.lt_u
                    br_if 0 (;@8;)
                    drop
                    i32.const 3
                    i32.const 4
                    local.get 0
                    i32.const 65536
                    i32.lt_u
                    select
                  end
                  local.set 0
                  local.get 4
                  local.get 2
                  i32.store offset=40
                  local.get 4
                  local.get 0
                  local.get 2
                  i32.add
                  i32.store offset=44
                  local.get 4
                  i32.const 5
                  i32.store offset=52
                  local.get 4
                  i32.const 1049580
                  i32.store offset=48
                  local.get 4
                  i64.const 5
                  i64.store offset=60 align=4
                  local.get 4
                  local.get 4
                  i32.const 24
                  i32.add
                  i64.extend_i32_u
                  i64.const 8589934592
                  i64.or
                  i64.store offset=104
                  local.get 4
                  local.get 4
                  i32.const 16
                  i32.add
                  i64.extend_i32_u
                  i64.const 8589934592
                  i64.or
                  i64.store offset=96
                  local.get 4
                  local.get 4
                  i32.const 40
                  i32.add
                  i64.extend_i32_u
                  i64.const 17179869184
                  i64.or
                  i64.store offset=88
                  local.get 4
                  local.get 4
                  i32.const 36
                  i32.add
                  i64.extend_i32_u
                  i64.const 21474836480
                  i64.or
                  i64.store offset=80
                  local.get 4
                  local.get 4
                  i32.const 32
                  i32.add
                  i64.extend_i32_u
                  i64.const 12884901888
                  i64.or
                  i64.store offset=72
                  br 6 (;@1;)
                end
                local.get 4
                local.get 2
                local.get 3
                local.get 6
                select
                i32.store offset=40
                local.get 4
                i32.const 3
                i32.store offset=52
                local.get 4
                i32.const 1049644
                i32.store offset=48
                local.get 4
                i64.const 3
                i64.store offset=60 align=4
                local.get 4
                local.get 4
                i32.const 24
                i32.add
                i64.extend_i32_u
                i64.const 8589934592
                i64.or
                i64.store offset=88
                local.get 4
                local.get 4
                i32.const 16
                i32.add
                i64.extend_i32_u
                i64.const 8589934592
                i64.or
                i64.store offset=80
                local.get 4
                local.get 4
                i32.const 40
                i32.add
                i64.extend_i32_u
                i64.const 12884901888
                i64.or
                i64.store offset=72
                br 5 (;@1;)
              end
              local.get 0
              local.get 1
              i32.const 0
              local.get 5
              call 39
              unreachable
            end
            local.get 4
            i32.const 4
            i32.store offset=52
            local.get 4
            i32.const 1049484
            i32.store offset=48
            local.get 4
            i64.const 4
            i64.store offset=60 align=4
            local.get 4
            local.get 4
            i32.const 24
            i32.add
            i64.extend_i32_u
            i64.const 8589934592
            i64.or
            i64.store offset=96
            local.get 4
            local.get 4
            i32.const 16
            i32.add
            i64.extend_i32_u
            i64.const 8589934592
            i64.or
            i64.store offset=88
            local.get 4
            local.get 4
            i32.const 12
            i32.add
            i64.extend_i32_u
            i64.const 12884901888
            i64.or
            i64.store offset=80
            local.get 4
            local.get 4
            i32.const 8
            i32.add
            i64.extend_i32_u
            i64.const 12884901888
            i64.or
            i64.store offset=72
            br 3 (;@1;)
          end
          local.get 2
          local.get 7
          i32.const 1049688
          call 26
          unreachable
        end
        i32.const 1048628
        call 41
        unreachable
      end
      local.get 0
      local.get 1
      local.get 2
      local.get 1
      call 39
      unreachable
    end
    local.get 4
    local.get 4
    i32.const 72
    i32.add
    i32.store offset=56
    local.get 4
    i32.const 48
    i32.add
    i32.const 1048628
    call 36
    unreachable)
  (func (;40;) (type 2) (param i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      global.get 0
      i32.const 32
      i32.sub
      local.tee 0
      global.set 0
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      i32.const 1
      i32.store offset=12
      local.get 0
      i32.const 1048860
      i32.store offset=8
      local.get 0
      i64.const 4
      i64.store offset=16 align=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 1048888
      call 36
      unreachable
    end
    unreachable)
  (func (;41;) (type 4) (param i32)
    i32.const 1048922
    i32.const 43
    local.get 0
    call 32
    unreachable)
  (func (;42;) (type 5) (param i32) (result i32)
    local.get 0
    global.get 0
    i32.add
    global.set 0
    global.get 0)
  (func (;43;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 3
    i32.store8 offset=44
    local.get 2
    i32.const 32
    i32.store offset=28
    local.get 2
    i32.const 0
    i32.store offset=40
    local.get 2
    i32.const 1048584
    i32.store offset=36
    local.get 2
    local.get 0
    i32.store offset=32
    local.get 2
    i32.const 0
    i32.store offset=20
    local.get 2
    i32.const 0
    i32.store offset=12
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 10
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              i32.load offset=8
              local.tee 3
              local.get 0
              i32.const 3
              i32.shl
              i32.add
              local.set 4
              local.get 0
              i32.const 1
              i32.sub
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 6
              local.get 1
              i32.load
              local.set 0
              loop  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 5
                if  ;; label = @7
                  local.get 2
                  i32.load offset=32
                  local.get 0
                  i32.load
                  local.get 5
                  local.get 2
                  i32.load offset=36
                  i32.load offset=12
                  call_indirect (type 1)
                  br_if 4 (;@3;)
                end
                local.get 3
                i32.load
                local.get 2
                i32.const 12
                i32.add
                local.get 3
                i32.load offset=4
                call_indirect (type 0)
                br_if 3 (;@3;)
                local.get 0
                i32.const 8
                i32.add
                local.set 0
                local.get 3
                i32.const 8
                i32.add
                local.tee 3
                local.get 4
                i32.ne
                br_if 0 (;@6;)
              end
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=20
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 5
            i32.shl
            local.set 11
            local.get 0
            i32.const 1
            i32.sub
            i32.const 134217727
            i32.and
            i32.const 1
            i32.add
            local.set 6
            local.get 1
            i32.load offset=8
            local.set 8
            local.get 1
            i32.load
            local.set 0
            loop  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 3
              if  ;; label = @6
                local.get 2
                i32.load offset=32
                local.get 0
                i32.load
                local.get 3
                local.get 2
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 1)
                br_if 3 (;@3;)
              end
              local.get 2
              local.get 5
              local.get 10
              i32.add
              local.tee 3
              i32.const 16
              i32.add
              i32.load
              i32.store offset=28
              local.get 2
              local.get 3
              i32.const 28
              i32.add
              i32.load8_u
              i32.store8 offset=44
              local.get 2
              local.get 3
              i32.const 24
              i32.add
              i32.load
              i32.store offset=40
              local.get 3
              i32.const 12
              i32.add
              i32.load
              local.set 4
              i32.const 0
              local.set 9
              i32.const 0
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 8
                    i32.add
                    i32.load
                    i32.const 1
                    i32.sub
                    br_table 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 4
                  i32.const 3
                  i32.shl
                  local.get 8
                  i32.add
                  local.tee 12
                  i32.load
                  br_if 1 (;@6;)
                  local.get 12
                  i32.load offset=4
                  local.set 4
                end
                i32.const 1
                local.set 7
              end
              local.get 2
              local.get 4
              i32.store offset=16
              local.get 2
              local.get 7
              i32.store offset=12
              local.get 3
              i32.const 4
              i32.add
              i32.load
              local.set 4
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load
                    i32.const 1
                    i32.sub
                    br_table 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 4
                  i32.const 3
                  i32.shl
                  local.get 8
                  i32.add
                  local.tee 7
                  i32.load
                  br_if 1 (;@6;)
                  local.get 7
                  i32.load offset=4
                  local.set 4
                end
                i32.const 1
                local.set 9
              end
              local.get 2
              local.get 4
              i32.store offset=24
              local.get 2
              local.get 9
              i32.store offset=20
              local.get 8
              local.get 3
              i32.const 20
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 3
              i32.load
              local.get 2
              i32.const 12
              i32.add
              local.get 3
              i32.load offset=4
              call_indirect (type 0)
              br_if 2 (;@3;)
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 11
              local.get 5
              i32.const 32
              i32.add
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 6
          local.get 1
          i32.load offset=4
          i32.ge_u
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=32
          local.get 1
          i32.load
          local.get 6
          i32.const 3
          i32.shl
          i32.add
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          local.get 2
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 1)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        br 1 (;@1;)
      end
      i32.const 0
    end
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;44;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call 15)
  (func (;45;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i64.load align=4
    i64.store)
  (func (;46;) (type 2) (param i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (table (;0;) 13 13 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "wasm_deepseek_hash_v1" (func 6))
  (export "wasm_solve" (func 1))
  (export "__wbindgen_add_to_stack_pointer" (func 42))
  (export "__wbindgen_export_0" (func 30))
  (export "__wbindgen_export_1" (func 35))
  (export "__wbindgen_export_2" (func 27))
  (elem (;0;) (i32.const 1) func 38 2 44 34 3 46 45 22 31 14 43 37)
  (data (;0;) (i32.const 1048576) "Error\00\00\00\08\00\00\00\0c\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\00sha3-wasm/src/lib.rs \00\10\00\14\00\00\00I\00\00\003")
  (data (;1;) (i32.const 1048652) "\01\00\00\00\0c\00\00\00a Display implementation returned an error unexpectedly/Users/rz.pan/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/string.rs\8b\00\10\00m\00\00\00{\0a\00\00\0e\00\00\00capacity overflow\00\00\00\08\01\10\00\11\00\00\00alloc/src/raw_vec.rs$\01\10\00\14\00\00\00\18\00\00\00\05\00\00\00..0123456789abcdefcalled `Option::unwrap()` on a `None` valueindex out of bounds: the len is  but the index is \00\85\01\10\00 \00\00\00\a5\01\10\00\12\00\00\00: \00\00\01\00\00\00\00\00\00\00\c8\01\10\00\02\00\00\00core/src/fmt/num.rs\00\dc\01\10\00\13\00\00\00f\00\00\00\17\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899range start index  out of range for slice of length \00\00\ca\02\10\00\12\00\00\00\dc\02\10\00\22\00\00\00range end index \10\03\10\00\10\00\00\00\dc\02\10\00\22\00\00\00slice index starts at  but ends at \000\03\10\00\16\00\00\00F\03\10\00\0d\00\00\00[...]begin <= end ( <= ) when slicing ``i\03\10\00\0e\00\00\00w\03\10\00\04\00\00\00{\03\10\00\10\00\00\00\8b\03\10\00\01\00\00\00byte index  is not a char boundary; it is inside  (bytes ) of `\00\ac\03\10\00\0b\00\00\00\b7\03\10\00&\00\00\00\dd\03\10\00\08\00\00\00\e5\03\10\00\06\00\00\00\8b\03\10\00\01\00\00\00 is out of bounds of `\00\00\ac\03\10\00\0b\00\00\00\14\04\10\00\16\00\00\00\8b\03\10\00\01\00\00\00core/src/str/mod.rs\00D\04\10\00\13\00\00\00\f1\00\00\00,\00\00\00core/src/unicode/printable.rs\00\00\00h\04\10\00\1d\00\00\00\1a\00\00\006\00\00\00h\04\10\00\1d\00\00\00\0a\00\00\00+\00\00\00\00\06\01\01\03\01\04\02\05\07\07\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\1c\14\01\15\02\17\02\19\0d\1c\05\1d\08\1f\01$\01j\04k\02\af\03\b1\02\bc\02\cf\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e7\04\e8\02\ee \f0\04\f8\02\fa\04\fb\01\0c';>NO\8f\9e\9e\9f{\8b\93\96\a2\b2\ba\86\b1\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\8a\8c\8d\8f\b6\c1\c3\c4\c6\cb\d6\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92\11o_\bf\ee\efZb\f4\fc\ffST\9a\9b./'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\e7\ec\ef\ff\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afno\dd\de\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0bN\034\0c\817\09\16\0a\08\18;E9\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\06&\03\1d\08\02\80\d0R\10\037,\08*\16\1a&\1c\14\17\09N\04$\09D\0d\19\07\0a\06H\08'\09u\0bB>*\06;\05\0a\06Q\06\01\05\10\03\05\0bY\08\02\1db\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\13:\06\0a\06\14\1c,\04\17\80\b9<dS\0cH\09\0aFE\1bH\08S\0dI\07\0a\80\b6\22\0e\0a\06F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\07;\03\1dU\01\0f2\0d\83\9bfu\0b\80\c4\8aLc\0d\840\10\16\0a\8f\9b\05\82G\9a\b9:\86\c6\829\07*\04\5c\06&\0aF\0a(\05\13\81\b0:\80\c6[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6)\0a\a2\e7\813\0f\01\1d\06\0e\04\08\81\8c\89\04k\05\0d\03\09\07\10\8f`\80\fa\06\81\b4LG\09t<\80\f6\0as\08p\15Fz\14\0c\14\0cW\09\19\80\87\81G\03\85B\0f\15\84P\1f\06\06\80\d5+\05>!\01p-\03\1a\04\02\81@\1f\11:\05\01\81\d0*\80\d6+\04\01\81\e0\80\f7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\04\11\03\0d\03w\04_\06\0c\04\01\0f\0c\048\08\0a\06(\08,\04\02>\81T\0c\1d\03\0a\058\07\1c\06\09\07\80\fa\84\06\00\01\03\05\05\06\06\02\07\06\08\07\09\11\0a\1c\0b\19\0c\1a\0d\10\0e\0c\0f\04\10\03\12\12\13\09\16\01\17\04\18\01\19\03\1a\07\1b\01\1c\02\1f\16 \03+\03-\0b.\010\041\022\01\a7\04\a9\02\aa\04\ab\08\fa\02\fb\05\fd\02\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\dd\0e\0fKL\fb\fc./?\5c]_\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11):;EIW[\5c^_de\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80mq\de\df\0e\1fno\1c\1d_}~\ae\afM\bb\bc\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96&./\a7\af\b7\bf\c7\cf\d7\df\9a\00@\97\980\8f\1f\ce\cf\d2\d4\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91Sgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab\05\1f\08\81\1c\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05N\07\1b\07W\07\02\06\17\0cP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\16\09\18\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06/1\80\f4\08<\03\0f\03>\058\08+\05\82\ff\11\18\08/\11-\03!\0f!\0f\80\8c\04\82\9a\16\0b\15\88\94\05/\05;\07\02\0e\18\09\80\be\22t\0c\80\d6\1a\81\10\05\80\e1\09\f2\9e\037\09\81\5c\14\80\b8\08\80\dd\15;\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a6\10\81\f5\07\01 *\06L\04\80\8d\04\80\be\03\1b\03\0f\0dcore/src/unicode/unicode_data.rs\00\00\00Q\0a\10\00 \00\00\00N\00\00\00(\00\00\00Q\0a\10\00 \00\00\00Z\00\00\00\16\00\00\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17 \1f\0c `\1f\ef, +*0\a0+o\a6`,\02\a8\e0,\1e\fb\e0-\00\fe 6\9e\ff`6\fd\01\e16\01\0a!7$\0d\e17\ab\0ea9/\18\e190\1c\e1J\f3\1e\e1N@4\a1R\1ea\e1S\f0jaTOo\e1T\9d\bcaU\00\cfaVe\d1\a1V\00\da!W\00\e0\a1X\ae\e2!Z\ec\e4\e1[\d0\e8a\5c \00\ee\5c\f0\01\7f]\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03;\09*\18\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\017\01\01\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\02\01\01\03\03\01\04\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\07I\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\04\1c\03\1d\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03\01\01u\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\1f1\040\0a\04\03&\09\0c\02 \04\02\068\01\01\02\03\01\01\058\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6@\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b\01\01,\030\01\02\04\02\02\02\01$\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04A\05\00\02O\04F\0b1\04{\016\0f)\01\02\02\0a\031\04\02\02\07\01=\03$\05\01\08>\01\0c\024\09\01\01\08\04\02\01_\03\02\04\06\01\02\01\9d\01\03\08\15\029\02\01\01\01\01\0c\01\09\01\0e\07\03\05C\01\02\06\01\01\02\01\01\03\04\03\01\01\0e\02U\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\08e\01\01\01\02\04\01\05\00\09\01\02\f5\01\0a\04\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\0b\024\05\05\03\17\01\00\01\06\0f\00\0c\03\03\00\05;\07\00\01?\04Q\01\0b\02\00\02\00.\02\17\00\05\03\06\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05d\01\a0\07\00\01=\04\00\04\fe\02\00\07m\07\00`\80\f0\00\00\00\00\00\00\01\00\00\00\00\00\00\00\82\80\00\00\00\00\00\00\8a\80\00\00\00\00\00\80\00\80\00\80\00\00\00\80\8b\80\00\00\00\00\00\00\01\00\00\80\00\00\00\00\81\80\00\80\00\00\00\80\09\80\00\00\00\00\00\80\8a\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\09\80\00\80\00\00\00\00\0a\00\00\80\00\00\00\00\8b\80\00\80\00\00\00\00\8b\00\00\00\00\00\00\80\89\80\00\00\00\00\00\80\03\80\00\00\00\00\00\80\02\80\00\00\00\00\00\80\80\00\00\00\00\00\00\80\0a\80\00\00\00\00\00\00\0a\00\00\80\00\00\00\80\81\80\00\80\00\00\00\80\80\80\00\00\00\00\00\80\01\00\00\80\00\00\00\00\08\80\00\80\00\00\00\80/rust/deps/dlmalloc-0.2.6/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\d0\0e\10\00)\00\00\00\a8\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\d0\0e\10\00)\00\00\00\ae\04\00\00\0d"))

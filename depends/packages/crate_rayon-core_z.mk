package=crate_rayon-core_z
$(package)_crate_name=rayon-core
$(package)_version=1.9.1
$(package)_download_path=https://static.crates.io/crates/$($(package)_crate_name)
$(package)_file_name=$($(package)_crate_name)-$($(package)_version).crate
$(package)_sha256_hash=d78120e2c850279833f1dd3582f730c4ab53ed95aeaaaa862a2a5c71b1656d8e
$(package)_crate_versioned_name=$($(package)_crate_name)

define $(package)_preprocess_cmds
  $(call generate_crate_checksum,$(package))
endef

define $(package)_stage_cmds
  $(call vendor_crate_source,$(package))
endef

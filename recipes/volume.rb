driver = node["openstack"]["block-storage"]["volume"]["driver"]

if driver == "cinder.volume.drivers.lvm.LVMISCSIDriver"
  include_recipe "openstack-block-storage::lvm"
else
  NotImplementedError.new("Unsupported driver #{driver}")
end

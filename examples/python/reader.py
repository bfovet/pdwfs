import netCDF4 as nc


ds = nc.Dataset("/tmp/job/bar.nc", "r", format="NETCDF4")
data = ds.variables["data"][:]

# with open("/tmp/job/foo.txt", "r") as f:
#     data = f.read()

print(f"data={data}")

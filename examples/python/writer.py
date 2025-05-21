import netCDF4 as nc


ds = nc.Dataset("/tmp/job/bar.nc", "w", format="NETCDF4")
x = ds.createDimension("x", 2)
data = ds.createVariable("data", "i4", ("x",), fill_value=None)
data[:] = 42
print(data)

# with open("/tmp/job/foo.txt", "w") as f:
#     f.write("Hello")

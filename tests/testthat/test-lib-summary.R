test_that("lib_summary returns expected result", {
  res <- lib_summary() #call function
  expect_s3_class(res, "data.frame") #should return a df
  expect_equal(ncol(res),2) #should have 2 cols
  expect_equal(names(res),c("Library", "n_packages"))
  expect_type(res$Library,"character")
  expect_type(res$n_packages, "integer")
})

test_that("lib_summary fails appropriately",{
  expect_error(lib_summary("foo"))
})

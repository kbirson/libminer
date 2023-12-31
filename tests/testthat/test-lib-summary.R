test_that("lib_summary returns expected result", {
  res <- libsummary() #call function
  expect_s3_class(res, "data.frame") #should return a df
  expect_equal(ncol(res),2) #should have 2 cols
  expect_equal(names(res),c("library", "n_packages"))
  expect_type(res$library,"character")
  expect_type(res$n_packages, "integer")
})

test_that("lib_summary fails appropriately",{
  expect_error(libsummary("foo"),"'sizes' must be TRUE or FALSE.")
})

test_that("sizes argument works",{
  res <-libsummary(sizes=TRUE)
  expect_equal(names(res),c("library", "n_packages","lib_size"))
  expect_type(res$lib_size,"double")
})

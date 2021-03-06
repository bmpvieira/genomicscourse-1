context("expect_output")

test_that("Distinct species", {
  species <- listBgeeSpecies()
	expect_that( species, is_a("list") )
  expect_that( length(species), equals(3) )
  expect_message(message("Last update:"))
  expect_true( unique(names(species) %in% c("Species in the Database", "RNAseq", "Affymetrix")) )
})

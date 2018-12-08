# MPark.Variant
#
# Copyright Michael Park, 2015-2017
#
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)

if (MPARK_VARIANT_INCLUDE_BOOST_BENCHMARKS)
  find_package(Boost 1.68.0 REQUIRED)

  function(boost_add_dataset dataset repeat range)
    metabench_add_dataset(${dataset} boost.cpp.erb ${range}
                          NAME boost ENV "{repeat: ${repeat}}")
    target_link_libraries(${dataset} PUBLIC Boost::boost)
  endfunction()
else()
  function(boost_add_dataset)
  endfunction()
endif()

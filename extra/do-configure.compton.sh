

rm -rf CMake* Trilinos* packages Dart* Testing cmake_install.cmake MakeFile*
TPL_BASE_DIR=/home/mbetten/TPLS
cmake \
-D Trilinos_ENABLE_EXPLICIT_INSTANTIATION:BOOL=ON \
-D Trilinos_ENABLE_INSTALL_CMAKE_CONFIG_FILES:BOOL=ON \
-D Trilinos_ENABLE_EXAMPLES:BOOL=OFF \
-D Trilinos_ENABLE_TESTS:BOOL=OFF \
-D Trilinos_ENABLE_DEBUG=$DEBUG_TRILINOS \
-D Trilinos_ENABLE_ALL_PACKAGES:BOOL=OFF \
-D Trilinos_ENABLE_ALL_OPTIONAL_PACKAGES:BOOL=OFF \
-D Trilinos_ENABLE_Shards:BOOL=ON \
-D Trilinos_ENABLE_Pamgen:BOOL=ON \
-D Pamgen_ENABLE_TESTS:BOOL=OFF \
-D Pamgen_ENABLE_EXAMPLES:BOOL=OFF \
-D Trilinos_ENABLE_Intrepid:BOOL=ON \
-D Intrepid_ENABLE_TESTS:BOOL=OFF \
-D Intrepid_ENABLE_EXAMPLES:BOOL=OFF \
-D Trilinos_ENABLE_Teuchos:BOOL=ON \
-D Trilinos_ENABLE_KokkosAlgorithms:BOOL=ON \
-D Trilinos_ENABLE_KokkosCore:BOOL=ON \
-D Trilinos_ENABLE_KokkosCompat:BOOL=ON \
-D Trilinos_ENABLE_KokkosLinAlg:BOOL=ON \
-D Trilinos_ENABLE_KokkosContainers:BOOL=ON \
-D Trilinos_ENABLE_KokkosAlgorithms:BOOL=ON \
-D Trilinos_ENABLE_KokkosMpiComm:BOOL=ON \
-D Tpetra_INST_COMPLEX_FLOAT:BOOL=OFF \
-D Tpetra_INST_COMPLEX_DOUBLE:BOOL=OFF \
-D Tpetra_INST_COMPLEX_FLOAT:BOOL=OFF \
-D Tpetra_INST_COMPLEX_DOUBLE:BOOL=OFF \
-D Kokkos_ENABLE_Pthread:BOOL=ON \
-D Kokkos_ENABLE_HWLOC:BOOL=ON \
-D Trilinos_ENABLE_Tpetra:BOOL=ON \
-D Tpetra_ENABLE_Kokkos_Refactor:BOOL=ON \
-D Trilinos_ENABLE_SEACAS:BOOL=OFF \
-D Trilinos_ENABLE_SEACASIoss:BOOL=OFF \
-D TPL_ENABLE_Netcdf:BOOL=OFF \
-D TPL_ENABLE_HDF5:BOOL=OFF \
-D SEACAS_ENABLE_EXODUS:BOOL=OFF \
-D SEACAS_ENABLE_APREPRO:BOOL=OFF \
-D SEACAS_ENABLE_NETCDF4_SUPPORT:BOOL=OFF \
-D Teuchos_ENABLE_LONG_LONG_INT:BOOL=OFF \
-D TPL_ENABLE_MPI:BOOL=ON \
-D TPL_ENABLE_BLAS:BOOL=ON \
 -D Trilinos_ENABLE_Fortran=ON \
 -D CMAKE_INSTALL_PREFIX:PATH=/home/mbetten/Trilinos/Trilinos-install-opt \
 -D CMAKE_SYSTEM_NAME="Linux" \
 -D CMAKE_BUILD_TYPE:STRING=RELEASE \
 -D Trilinos_ENABLE_INSTALL_CMAKE_CONFIG_FILES:BOOL=ON \
 -D Trilinos_ENABLE_DEBUG:BOOL=OFF \
 -D Trilinos_ENABLE_CHECKED_STL:BOOL=OFF \
 -D Trilinos_ENABLE_EXPLICIT_INSTANTIATION:BOOL=ON \
 -D Trilinos_WARNINGS_AS_ERRORS_FLAGS:STRING="" \
 -D BUILD_SHARED_LIBS:BOOL=OFF \
 -D DART_TESTING_TIMEOUT:STRING=600 \
 -D CMAKE_VERBOSE_MAKEFILE:BOOL=OFF \
 -D CMAKE_CXX_COMPILER:FILEPATH="mpiicpc" \
 -D CMAKE_C_COMPILER:FILEPATH="mpiicc" \
 -D Trilinos_SKIP_FORTRANCINTERFACE_VERIFY_TEST=ON \
 -DTrilinos_EXTRA_LINK_FLAGS:STRING="-Bstatic -lifport -lifcore -limf -lsvml -lm  -lipgo -lirc -Bdynamic -lpthread -ldl" \
 -D CMAKE_Fortran_COMPILER:FILEPATH="mpiifort" \
 -D FC_FN_CASE:STRING="LOWER" \
 -D FC_FN_UNDERSCORE:STRING="UNDER" \
 -D CMAKE_CXX_FLAGS:STRING="-g -mmic -openmp -DMPICH_IGNORE_CXX_SEEK" \
 -D CMAKE_C_FLAGS:STRING="-g -mmic -openmp" \
 -D CMAKE_Fortran_FLAGS:STRING="-g -mmic -openmp" \
 -D CMAKE_F77_FLAGS:STRING="-g -mmic -openmp" \
-D Netcdf_INCLUDE_DIRS:FILEPATH="${TPL_BASE_DIR}/include" \
-D Netcdf_LIBRARY_DIRS:FILEPATH="${TPL_BASE_DIR}/lib" \
 -D TPL_Netcdf_LIBRARIES="${TPL_BASE_DIR}/lib/libnetcdf.a;${TPL_BASE_DIR}/lib/libhdf5_hl.a;${TPL_BASE_DIR}/lib/libhdf5.a;${TPL_BASE_DIR}/lib/libz.a" \
-D HDF5_INCLUDE_DIRS:FILEPATH="${TPL_BASE_DIR}/include" \
-D HDF5_LIBRARY_DIRS:FILEPATH="${TPL_BASE_DIR}/lib" \
 -D BLAS_LIBRARY_DIRS:FILEPATH="${MKLROOT}/lib/mic" \
 -D BLAS_LIBRARY_NAMES="mkl_intel_lp64;mkl_sequential;mkl_core;pthread;m" \
 -D LAPACK_LIBRARY_NAMES="" \
-D TPL_ENABLE_Netcdf:BOOL=ON \
-D TPL_ENABLE_HDF5:BOOL=ON \
 -D TPL_LAPACK_LIBRARIES="" \
 -D TPL_ENABLE_MPI:BOOL=ON \
 -D TPL_ENABLE_BinUtils=OFF \
 -D TPL_ENABLE_Pthread=ON \
 -D TPL_Pthread_LIBRARIES="pthread" \
 -D TPL_ENABLE_HWLOC=ON \
 -D HWLOC_INCLUDE_DIRS=/home/projects/libraries/mic/hwloc/1.6.2/include \
 -D HWLOC_LIBRARY_DIRS=/home/projects/libraries/mic/hwloc/1.6.2/lib \
 -D HAVE_GCC_ABI_DEMANGLE_EXITCODE=0 \
 -D HAVE_TEUCHOS_BLASFLOAT_EXITCODE=0 \
 -D LAPACK_SLAPY2_WORKS_EXITCODE=0 \
-D TPL_BoostLib_LIBRARY_DIRS:FILEPATH="/home/mbetten/TPLS/lib" \
-D TPL_BoostLib_INCLUDE_DIRS:FILEPATH="/home/mbetten/TPLS/include" \
-D TPL_BoostLib_LIBRARIES='/home/mbetten/TPLS/lib/libboost_program_options.a;/home/mbetten/TPLS/lib/libboost_system.a' \
-D TPL_ENABLE_Netcdf:BOOL=ON \
-D TPL_ENABLE_HDF5:BOOL=ON \
-D TPL_ENABLE_SuperLU:BOOL=OFF \
-D TPL_ENABLE_MOAB:BOOL=OFF \
-D Trilinos_ENABLE_KokkosCore:BOOL=ON \
-D Trilinos_ENABLE_KokkosContainers:BOOL=ON \
-D Trilinos_ENABLE_KokkosLinAlg:BOOL=ON \
-D Kokkos_ENABLE_Pthread:BOOL=OFF \
-D Kokkos_ENABLE_OpenMP:BOOL=ON \
-D TPL_ENABLE_HWLOC:BOOL=ON \
-D Kokkos_ENABLE_HWLOC:BOOL=ON \
-D Kokkos_ENABLE_LinAlg:BOOL=ON \
 -D HAVE_GCC_ABI_DEMANGLE_EXITCODE=0 \
 -D HAVE_TEUCHOS_BLASFLOAT_EXITCODE=0 \
 -D LAPACK_SLAPY2_WORKS_EXITCODE=0 \
 -D HAVE_LAPACK_DLARFG_EXITCODE=0 \
 -D HAVE_LAPACK_SLARFG_EXITCODE=0 \
 -D HAVE_LAPACK_ZLARFG_EXITCODE=0 \
 -D HAVE_LAPACK_CLARFG_EXITCODE=0 \
 -D HAVE_LAPACK_DLARFP_EXITCODE=0 \
 -D HAVE_LAPACK_SLARFP_EXITCODE=0 \
 -D HAVE_LAPACK_ZLARFP_EXITCODE=0 \
 -D HAVE_LAPACK_CLARFP_EXITCODE=0 \
 -D HAVE_LAPACK_DLARFGP_EXITCODE=0 \
 -D HAVE_LAPACK_SLARFGP_EXITCODE=0 \
 -D HAVE_LAPACK_ZLARFGP_EXITCODE=0 \
 -D HAVE_LAPACK_CLARFGP_EXITCODE=0 \
 -D HAVE_LAPACK_DGEQRFP_EXITCODE=0 \
 -D HAVE_LAPACK_SGEQRFP_EXITCODE=0 \
 -D HAVE_LAPACK_ZGEQRFP_EXITCODE=0 \
 -D HAVE_LAPACK_CGEQRFP_EXITCODE=0 \
 -D HAVE_LAPACK_DGEQR2P_EXITCODE=0 \
 -D HAVE_LAPACK_SGEQR2P_EXITCODE=0 \
 -D HAVE_LAPACK_ZGEQR2P_EXITCODE=0 \
 -D HAVE_LAPACK_CGEQR2P_EXITCODE=0 \
../Trilinos

#ifndef IMAGER_H
#define IMAGER_H



#if defined(Rcpp_hpp) && !defined(COMPILING_IMAGER)
#error "The file 'Rcpp.h' should not be included. Please correct to include only 'imager.h'."
#endif

#include <R.h>
#include <Rcpp.h>

#define cimg_use_abort
#ifdef cimg_use_openmp
#define cimg_test_abort() if (!omp_get_thread_num()) Rcpp::checkUserInterrupt()
#else
#define cimg_test_abort() Rcpp::checkUserInterrupt()
#define cimg_test_abort2() Rcpp::checkUserInterrupt()
#endif // #ifdef cimg_use_openmp

#include "CImg.h"

#include "wrappers.h"

typedef cimg_library::CImg<double> CId;
typedef cimg_library::CImg<int> CIi;
typedef cimg_library::CImg<float> CIf;
#endif

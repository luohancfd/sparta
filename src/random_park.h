/* ----------------------------------------------------------------------
   SPARTA - Stochastic PArallel Rarefied-gas Time-accurate Analyzer
   http://sparta.sandia.gov
   Steve Plimpton, sjplimp@sandia.gov, Michael Gallis, magalli@sandia.gov
   Sandia National Laboratories

   Copyright (2012) Sandia Corporation.  Under the terms of Contract
   DE-AC04-94AL85000 with Sandia Corporation, the U.S. Government retains
   certain rights in this software.  This software is distributed under 
   the GNU General Public License.

   See the README file in the top-level SPARTA directory.
------------------------------------------------------------------------- */

#ifndef SPARTA_RAN_PARK_H
#define SPARTA_RAN_PARK_H

namespace SPARTA_NS {

class RanPark {
 public:
  RanPark(int);
  RanPark(double);
  ~RanPark() {}
  void reset(double, int, int);
  double uniform();
  double gaussian();

 private:
  int seed,save;
  double second;
};

}

#endif

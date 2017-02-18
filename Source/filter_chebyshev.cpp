/* ----------------------------------------------------------------------------

   Squeezer
   ========
   Flexible general-purpose audio compressor with a touch of lemon.

   Copyright (c) 2013-2016 Martin Zuther (http://www.mzuther.de/)

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.

   Thank you for using free software!

---------------------------------------------------------------------------- */

#include "filter_chebyshev.h"
#include "math.h"


//==============================================================================

FilterChebyshev::FilterChebyshev(
    double RelativeCutoffFrequency,
    bool IsHighPass,
    double PercentRipple,
    int NumberOfPoles)
{
    PercentRipple_ = PercentRipple;
    NumberOfPoles_ = NumberOfPoles;

    // each filter stage consists of a pair of poles
    jassert(NumberOfPoles_ % 2 == 0);
    int NumberOfStages = NumberOfPoles_ / 2;

    for (int Stage = 0; Stage < NumberOfStages; ++Stage)
    {
        FilterStages_.add(new FilterChebyshevStage());
    }

    changeParameters(RelativeCutoffFrequency, IsHighPass);
    reset();
}


void FilterChebyshev::changeParameters(
    double RelativeCutoffFrequency,
    bool IsHighPass)
{
    // TODO: normalise coefficients
    for (int Stage = 0; Stage < FilterStages_.size(); ++Stage)
    {
        // pole pairs start with index 1!
        int PolePair = Stage + 1;

        FilterStages_[Stage]->changeParameters(
            RelativeCutoffFrequency,
            IsHighPass,
            PercentRipple_,
            NumberOfPoles_,
            PolePair);
    }
}


void FilterChebyshev::reset()
{
    for (int Stage = 0; Stage < FilterStages_.size(); ++Stage)
    {
        FilterStages_[Stage]->reset();
    }
}


double FilterChebyshev::filterSample(
    double InputCurrent)
{
    double OutputCurrent = InputCurrent;

    for (int Stage = 0; Stage < FilterStages_.size(); ++Stage)
    {
        OutputCurrent = FilterStages_[Stage]->filterSample(
                            OutputCurrent);
    }

    // output is already de-normalised
    return OutputCurrent;
}


// Local Variables:
// ispell-local-dictionary: "british"
// End:

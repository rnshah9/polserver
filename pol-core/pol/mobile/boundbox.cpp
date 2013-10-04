/*
History
=======


Notes
=======

*/

#include "../../clib/stl_inc.h"

#include "boundbox.h"

bool BoundingBox::contains( unsigned short x, unsigned short y ) const
{
	for(const auto &elem : areas)
	{
		if (x >= elem.topleft.x && x <= elem.bottomright.x &&
			y >= elem.topleft.y && y <= elem.bottomright.y)
		{
			return true;
		}
	}
	return false;
}

void BoundingBox::addarea( const Area& area )
{
	areas.push_back( area );
}



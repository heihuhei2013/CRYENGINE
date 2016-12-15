// Copyright 2001-2016 Crytek GmbH / Crytek Group. All rights reserved.

#pragma once

// *INDENT-OFF* - <hard to read code and declarations due to inconsistent indentation>

namespace uqs
{
	namespace core
	{

		//===================================================================================
		//
		// Serialize()
		//
		// - support for some missing data types in CryCommon (there's no according Serialize() function for them yet)
		// - to add these functions transparently to the yasli serialization process, just do "using uqs::core::Serialize;"
		//
		//===================================================================================

		class CHistoricQuery;

		bool Serialize(Serialization::IArchive& ar, CTimeValue& timeValue, const char* name, const char* label);
		bool Serialize(Serialization::IArchive& ar, OBB& obb, const char* name, const char* label);

		// this is a UQS-specific function, yet all Serialize() functions should reside in the same place
		bool Serialize(Serialization::IArchive& ar, std::shared_ptr<CHistoricQuery>& ptr, const char* szName, const char* szLabel);

	}
}

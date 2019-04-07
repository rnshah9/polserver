/** @file
 *
 * @par History
 */


#ifndef CGDATA_H
#define CGDATA_H

#include <cstddef>
#include <map>

#include "../../clib/rawtypes.h"
#include "../../clib/refptr.h"
#include "../mobile/charactr.h"
#include "../reftypes.h"
#include "../uoasync.h"
#include "../uoexec.h"


namespace Pol
{
namespace Module
{
class UOExecutorModule;
class UnicodeExecutorModule;
}
namespace Core
{
class JusticeRegion;
class MusicRegion;
class UContainer;
class WeatherRegion;
}
namespace Network
{
class ClientGameData
{
public:
  ClientGameData();
  ~ClientGameData();
  void clear();
  size_t estimatedSize() const;


  ref_ptr<Core::UContainer> vendor_bought;
  ref_ptr<Core::UContainer> vendor_for_sale;
  Core::NpcRef vendor;

  typedef std::map<u32, Module::UOExecutorModule*> GumpMods;
  GumpMods gumpmods;

  void add_gumpmod( Module::UOExecutorModule*, u32 gumpid );
  Module::UOExecutorModule* find_gumpmod( u32 gumpid );
  void remove_gumpmods( Module::UOExecutorModule* );


  // popup_menu_selection_above, popup_menu_selection_chr
  Module::UOExecutorModule* popup_menu_selection_uoemod;
  Module::UOExecutorModule* prompt_uoemod;
  Module::UOExecutorModule* resurrect_uoemod;
  Module::UOExecutorModule* selcolor_uoemod;

  Module::UnicodeExecutorModule* prompt_uniemod;  // UNIemod, not UOemod!!!

  Core::JusticeRegion* justice_region;

  int lightlevel;
  // LightRegion* light_region;
  Core::MusicRegion* music_region;
  Core::WeatherRegion* weather_region;
  u32 custom_house_serial;

  Pol::Core::UOAsyncRequestHolder requests;


};
}
}
#endif

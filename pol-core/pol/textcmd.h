/*
History
=======


Notes
=======

*/
#ifndef __TEXTCMD_H
#define __TEXTCMD_H
namespace Pol {
  namespace Core {
	bool process_command( Network::Client *client, const char *text, const u16* wtext = NULL, const char* lang = NULL );
  }
}
#endif

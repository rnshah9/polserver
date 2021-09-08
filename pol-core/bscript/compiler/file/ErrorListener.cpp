#include "ErrorListener.h"

#include <set>

#include "EscriptGrammar/EscriptParser.h"
#include "EscriptGrammar/EscriptParserRuleContext.h"
#include "bscript/compiler/Profile.h"
#include "bscript/compiler/Report.h"
#include "clib/maputil.h"

namespace Pol::Bscript::Compiler
{
std::set<std::string, Clib::ci_cmp_pred> easily_overlooked_reserved_words = {
    "as", "byval", "double", "downto", "float", "hash",
    "in", "integer", "is", "long", "out", "real",
    "signed", "stack", "step", "string", "to", "unsigned"
};

ErrorListener::ErrorListener( std::string pathname, Profile& profile )
    : pathname( std::move( pathname ) ), profile( profile )
{
}

void ErrorListener::propagate_errors_to( Report& report, const SourceFileIdentifier& ident )
{
  for ( auto& msg : error_messages )
  {
    SourceLocation location( &ident, static_cast<unsigned short>( msg.line_number ),
                             static_cast<unsigned short>( msg.char_column ) );
    report.error( location, msg.message );
  }
}

void ErrorListener::syntaxError( antlr4::Recognizer* r, antlr4::Token* offendingSymbol, size_t line,
                                 size_t charPositionInLine, const std::string& msg,
                                 std::exception_ptr eptr )
{
  // FIXME i dunno if this is right cast lalala
  if ( auto parser = dynamic_cast<antlr4::Parser*>( r ) )
  {
    if ( auto ctx =
             dynamic_cast<EscriptGrammar::EscriptParserRuleContext*>( parser->getContext() ) )
    {
      do
      {
        if ( ctx->getRuleIndex() == EscriptGrammar::EscriptParser::RuleStatement ||
             ctx->getRuleIndex() == EscriptGrammar::EscriptParser::RuleProgramDeclaration ||
             ctx->getRuleIndex() == EscriptGrammar::EscriptParser::RuleFunctionDeclaration )
        {
          break;
        }
        ctx->has_parse_errors = true;
        ctx = static_cast<EscriptGrammar::EscriptParserRuleContext*>( ctx->parent );
      } while ( ctx != nullptr );
    }
  }

  if ( offendingSymbol )
  {
    std::string symbol = offendingSymbol->getText();
    if ( easily_overlooked_reserved_words.count( symbol ) )
    {
      fmt::Writer w;
      w << "Did not expect reserved word '" << symbol << "' in this context.\n";
      error_messages.push_back( { w.str(), line, charPositionInLine + 1 } );
    }
  }

  error_messages.push_back( { msg, line, charPositionInLine+1 } );
}

void ErrorListener::reportAmbiguity( antlr4::Parser* /*recognizer*/, const antlr4::dfa::DFA&,
                                     size_t /*startIndex*/, size_t /*stopIndex*/, bool /*exact*/,
                                     const antlrcpp::BitSet& /*ambigAlts*/,
                                     antlr4::atn::ATNConfigSet* /*configs*/ )
{
  ++profile.ambiguities;
}

}  // namespace Pol::Bscript::Compiler

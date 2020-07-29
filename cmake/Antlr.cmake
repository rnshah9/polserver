# To update the ANTLR library:
# 1. Download an archive from the GitHub Releases page: https://github.com/antlr/antlr4/releases
#    - Example URL: https://github.com/antlr/antlr4/archive/4.8.tar.gz
# 2. Copy the contents of runtime/Cpp/runtime/src into lib/antlr
# 3. Replace all instances of ERROR with ANTLR_ERROR
#    - This is because windows headers define a macro named ERROR,
#      and precompiled headers pull that macro in.
# 4. Replace the list of filenames in this file.  Here is one way to get a list:
#    $ find lib/antlr -type f | sort | sed 's#^#        ${CMAKE_CURRENT_LIST_DIR}/../#g'
set(lib_name antlr)

add_library(${lib_name} STATIC
        # sorted !
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ANTLRErrorListener.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ANTLRErrorListener.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ANTLRErrorStrategy.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ANTLRErrorStrategy.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ANTLRFileStream.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ANTLRFileStream.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ANTLRInputStream.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ANTLRInputStream.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/BailErrorStrategy.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/BailErrorStrategy.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/BaseErrorListener.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/BaseErrorListener.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/BufferedTokenStream.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/BufferedTokenStream.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/CharStream.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/CharStream.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/CommonToken.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/CommonToken.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/CommonTokenFactory.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/CommonTokenFactory.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/CommonTokenStream.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/CommonTokenStream.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ConsoleErrorListener.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ConsoleErrorListener.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/DefaultErrorStrategy.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/DefaultErrorStrategy.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/DiagnosticErrorListener.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/DiagnosticErrorListener.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Exceptions.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Exceptions.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/FailedPredicateException.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/FailedPredicateException.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/InputMismatchException.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/InputMismatchException.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/IntStream.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/IntStream.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/InterpreterRuleContext.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/InterpreterRuleContext.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Lexer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Lexer.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/LexerInterpreter.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/LexerInterpreter.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/LexerNoViableAltException.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/LexerNoViableAltException.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ListTokenSource.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ListTokenSource.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/NoViableAltException.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/NoViableAltException.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Parser.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Parser.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ParserInterpreter.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ParserInterpreter.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ParserRuleContext.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ParserRuleContext.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ProxyErrorListener.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/ProxyErrorListener.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/RecognitionException.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/RecognitionException.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Recognizer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Recognizer.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/RuleContext.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/RuleContext.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/RuleContextWithAltNum.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/RuleContextWithAltNum.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/RuntimeMetaData.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/RuntimeMetaData.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Token.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Token.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/TokenFactory.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/TokenSource.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/TokenSource.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/TokenStream.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/TokenStream.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/TokenStreamRewriter.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/TokenStreamRewriter.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/UnbufferedCharStream.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/UnbufferedCharStream.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/UnbufferedTokenStream.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/UnbufferedTokenStream.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Vocabulary.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/Vocabulary.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/WritableToken.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/WritableToken.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/antlr4-common.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/antlr4-runtime.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATN.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATN.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNConfig.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNConfig.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNConfigSet.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNConfigSet.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNDeserializationOptions.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNDeserializationOptions.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNDeserializer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNDeserializer.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNSerializer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNSerializer.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNSimulator.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNSimulator.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ATNType.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/AbstractPredicateTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/AbstractPredicateTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ActionTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ActionTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/AmbiguityInfo.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/AmbiguityInfo.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ArrayPredictionContext.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ArrayPredictionContext.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/AtomTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/AtomTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/BasicBlockStartState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/BasicBlockStartState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/BasicState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/BasicState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/BlockEndState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/BlockEndState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/BlockStartState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/BlockStartState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ContextSensitivityInfo.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ContextSensitivityInfo.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/DecisionEventInfo.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/DecisionEventInfo.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/DecisionInfo.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/DecisionInfo.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/DecisionState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/DecisionState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/EmptyPredictionContext.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/EmptyPredictionContext.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/EpsilonTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/EpsilonTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ErrorInfo.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ErrorInfo.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LL1Analyzer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LL1Analyzer.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerATNConfig.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerATNConfig.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerATNSimulator.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerATNSimulator.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerActionExecutor.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerActionExecutor.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerActionType.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerChannelAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerChannelAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerCustomAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerCustomAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerIndexedCustomAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerIndexedCustomAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerModeAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerModeAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerMoreAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerMoreAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerPopModeAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerPopModeAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerPushModeAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerPushModeAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerSkipAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerSkipAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerTypeAction.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LexerTypeAction.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LookaheadEventInfo.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LookaheadEventInfo.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LoopEndState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/LoopEndState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/NotSetTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/NotSetTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/OrderedATNConfigSet.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/OrderedATNConfigSet.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ParseInfo.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ParseInfo.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ParserATNSimulator.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ParserATNSimulator.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PlusBlockStartState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PlusBlockStartState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PlusLoopbackState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PlusLoopbackState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PrecedencePredicateTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PrecedencePredicateTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PredicateEvalInfo.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PredicateEvalInfo.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PredicateTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PredicateTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PredictionContext.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PredictionContext.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PredictionMode.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/PredictionMode.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ProfilingATNSimulator.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/ProfilingATNSimulator.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/RangeTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/RangeTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/RuleStartState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/RuleStartState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/RuleStopState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/RuleStopState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/RuleTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/RuleTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/SemanticContext.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/SemanticContext.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/SetTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/SetTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/SingletonPredictionContext.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/SingletonPredictionContext.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/StarBlockStartState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/StarBlockStartState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/StarLoopEntryState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/StarLoopEntryState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/StarLoopbackState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/StarLoopbackState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/TokensStartState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/TokensStartState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/Transition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/Transition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/WildcardTransition.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/atn/WildcardTransition.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/dfa/DFA.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/dfa/DFA.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/dfa/DFASerializer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/dfa/DFASerializer.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/dfa/DFAState.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/dfa/DFAState.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/dfa/LexerDFASerializer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/dfa/LexerDFASerializer.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/InterpreterDataReader.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/InterpreterDataReader.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/Interval.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/Interval.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/IntervalSet.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/IntervalSet.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/MurmurHash.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/MurmurHash.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/Predicate.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/misc/Predicate.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/Any.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/Any.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/Arrays.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/Arrays.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/BitSet.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/CPPUtils.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/CPPUtils.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/Declarations.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/StringUtils.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/StringUtils.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/guid.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/support/guid.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/AbstractParseTreeVisitor.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ErrorNode.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ErrorNode.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ErrorNodeImpl.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ErrorNodeImpl.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/IterativeParseTreeWalker.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/IterativeParseTreeWalker.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ParseTree.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ParseTree.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ParseTreeListener.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ParseTreeListener.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ParseTreeProperty.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ParseTreeVisitor.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ParseTreeVisitor.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ParseTreeWalker.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/ParseTreeWalker.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/TerminalNode.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/TerminalNode.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/TerminalNodeImpl.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/TerminalNodeImpl.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/Trees.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/Trees.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/Chunk.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/Chunk.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/ParseTreeMatch.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/ParseTreeMatch.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/ParseTreePattern.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/ParseTreePattern.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/ParseTreePatternMatcher.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/ParseTreePatternMatcher.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/RuleTagToken.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/RuleTagToken.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/TagChunk.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/TagChunk.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/TextChunk.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/TextChunk.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/TokenTagToken.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/pattern/TokenTagToken.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPath.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPath.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathElement.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathElement.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathLexer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathLexer.g4
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathLexer.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathLexer.tokens
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathLexerErrorListener.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathLexerErrorListener.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathRuleAnywhereElement.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathRuleAnywhereElement.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathRuleElement.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathRuleElement.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathTokenAnywhereElement.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathTokenAnywhereElement.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathTokenElement.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathTokenElement.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathWildcardAnywhereElement.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathWildcardAnywhereElement.h
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathWildcardElement.cpp
        ${CMAKE_CURRENT_LIST_DIR}/../lib/antlr/tree/xpath/XPathWildcardElement.h
        )

set_compile_flags(${lib_name} 0)

target_include_directories(${lib_name}  PRIVATE
        "${CMAKE_CURRENT_LIST_DIR}/../lib/antlr"
        )

target_compile_definitions(${lib_name} PUBLIC
        ANTLR4CPP_STATIC
        )

set_target_properties (${lib_name} PROPERTIES FOLDER 3rdParty)
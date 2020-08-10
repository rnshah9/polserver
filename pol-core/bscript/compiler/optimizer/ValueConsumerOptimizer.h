#ifndef POLSERVER_VALUECONSUMEROPTIMIZER_H
#define POLSERVER_VALUECONSUMEROPTIMIZER_H

#include <memory>

#include "compiler/ast/NodeVisitor.h"

namespace Pol::Bscript::Compiler
{
class BinaryOperator;
class ValueConsumer;
class SetMember;
class Statement;

class ValueConsumerOptimizer : public NodeVisitor
{
public:
  std::unique_ptr<Statement> optimized_result;

  void visit_children( Node& ) override;

  void visit_assign_subscript( AssignSubscript& ) override;
  void visit_binary_operator( BinaryOperator& ) override;
  void visit_set_member( SetMember& ) override;

  std::unique_ptr<Statement> optimize( ValueConsumer& );
};

}  // namespace Pol::Bscript::Compiler


#endif  // POLSERVER_VALUECONSUMEROPTIMIZER_H
/*
 * generated by Xtext 2.10.0
 */
grammar InternalXContext;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package ac.soton.eventb.xtext.context.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package ac.soton.eventb.xtext.context.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import ac.soton.eventb.xtext.context.services.XContextGrammarAccess;

}
@parser::members {
	private XContextGrammarAccess grammarAccess;

	public void setGrammarAccess(XContextGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleXContext
entryRuleXContext
:
{ before(grammarAccess.getXContextRule()); }
	 ruleXContext
{ after(grammarAccess.getXContextRule()); } 
	 EOF 
;

// Rule XContext
ruleXContext 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getXContextAccess().getGroup()); }
		(rule__XContext__Group__0)
		{ after(grammarAccess.getXContextAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleXCarrierSet
entryRuleXCarrierSet
:
{ before(grammarAccess.getXCarrierSetRule()); }
	 ruleXCarrierSet
{ after(grammarAccess.getXCarrierSetRule()); } 
	 EOF 
;

// Rule XCarrierSet
ruleXCarrierSet 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getXCarrierSetAccess().getGroup()); }
		(rule__XCarrierSet__Group__0)
		{ after(grammarAccess.getXCarrierSetAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleXConstant
entryRuleXConstant
:
{ before(grammarAccess.getXConstantRule()); }
	 ruleXConstant
{ after(grammarAccess.getXConstantRule()); } 
	 EOF 
;

// Rule XConstant
ruleXConstant 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getXConstantAccess().getGroup()); }
		(rule__XConstant__Group__0)
		{ after(grammarAccess.getXConstantAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleXAxiom
entryRuleXAxiom
:
{ before(grammarAccess.getXAxiomRule()); }
	 ruleXAxiom
{ after(grammarAccess.getXAxiomRule()); } 
	 EOF 
;

// Rule XAxiom
ruleXAxiom 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getXAxiomAccess().getGroup()); }
		(rule__XAxiom__Group__0)
		{ after(grammarAccess.getXAxiomAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__CommentAlternatives_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXContextAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0()); }
		RULE_ML_COMMENT
		{ after(grammarAccess.getXContextAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getXContextAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1()); }
		RULE_SL_COMMENT
		{ after(grammarAccess.getXContextAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XCarrierSet__CommentAlternatives_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXCarrierSetAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0()); }
		RULE_ML_COMMENT
		{ after(grammarAccess.getXCarrierSetAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getXCarrierSetAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1()); }
		RULE_SL_COMMENT
		{ after(grammarAccess.getXCarrierSetAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XConstant__CommentAlternatives_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXConstantAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0()); }
		RULE_ML_COMMENT
		{ after(grammarAccess.getXConstantAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getXConstantAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1()); }
		RULE_SL_COMMENT
		{ after(grammarAccess.getXConstantAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__CommentAlternatives_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXAxiomAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0()); }
		RULE_ML_COMMENT
		{ after(grammarAccess.getXAxiomAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getXAxiomAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1()); }
		RULE_SL_COMMENT
		{ after(grammarAccess.getXAxiomAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group__0__Impl
	rule__XContext__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getContextAction_0()); }
	()
	{ after(grammarAccess.getXContextAccess().getContextAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group__1__Impl
	rule__XContext__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getCommentAssignment_1()); }
	(rule__XContext__CommentAssignment_1)?
	{ after(grammarAccess.getXContextAccess().getCommentAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group__2__Impl
	rule__XContext__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getContextKeyword_2()); }
	'context'
	{ after(grammarAccess.getXContextAccess().getContextKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group__3__Impl
	rule__XContext__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getNameAssignment_3()); }
	(rule__XContext__NameAssignment_3)
	{ after(grammarAccess.getXContextAccess().getNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group__4__Impl
	rule__XContext__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getGroup_4()); }
	(rule__XContext__Group_4__0)?
	{ after(grammarAccess.getXContextAccess().getGroup_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group__5__Impl
	rule__XContext__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getGroup_5()); }
	(rule__XContext__Group_5__0)?
	{ after(grammarAccess.getXContextAccess().getGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group__6__Impl
	rule__XContext__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getGroup_6()); }
	(rule__XContext__Group_6__0)?
	{ after(grammarAccess.getXContextAccess().getGroup_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group__7__Impl
	rule__XContext__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getGroup_7()); }
	(rule__XContext__Group_7__0)?
	{ after(grammarAccess.getXContextAccess().getGroup_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getEndKeyword_8()); }
	'end'
	{ after(grammarAccess.getXContextAccess().getEndKeyword_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__XContext__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group_4__0__Impl
	rule__XContext__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getExtendsKeyword_4_0()); }
	'extends'
	{ after(grammarAccess.getXContextAccess().getExtendsKeyword_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getXContextAccess().getExtendsAssignment_4_1()); }
		(rule__XContext__ExtendsAssignment_4_1)
		{ after(grammarAccess.getXContextAccess().getExtendsAssignment_4_1()); }
	)
	(
		{ before(grammarAccess.getXContextAccess().getExtendsAssignment_4_1()); }
		(rule__XContext__ExtendsAssignment_4_1)*
		{ after(grammarAccess.getXContextAccess().getExtendsAssignment_4_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__XContext__Group_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group_5__0__Impl
	rule__XContext__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getSetsKeyword_5_0()); }
	'sets'
	{ after(grammarAccess.getXContextAccess().getSetsKeyword_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getXContextAccess().getSetsAssignment_5_1()); }
		(rule__XContext__SetsAssignment_5_1)
		{ after(grammarAccess.getXContextAccess().getSetsAssignment_5_1()); }
	)
	(
		{ before(grammarAccess.getXContextAccess().getSetsAssignment_5_1()); }
		(rule__XContext__SetsAssignment_5_1)*
		{ after(grammarAccess.getXContextAccess().getSetsAssignment_5_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__XContext__Group_6__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group_6__0__Impl
	rule__XContext__Group_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_6__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getConstantsKeyword_6_0()); }
	'constants'
	{ after(grammarAccess.getXContextAccess().getConstantsKeyword_6_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_6__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group_6__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_6__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getXContextAccess().getConstantsAssignment_6_1()); }
		(rule__XContext__ConstantsAssignment_6_1)
		{ after(grammarAccess.getXContextAccess().getConstantsAssignment_6_1()); }
	)
	(
		{ before(grammarAccess.getXContextAccess().getConstantsAssignment_6_1()); }
		(rule__XContext__ConstantsAssignment_6_1)*
		{ after(grammarAccess.getXContextAccess().getConstantsAssignment_6_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__XContext__Group_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group_7__0__Impl
	rule__XContext__Group_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXContextAccess().getAxiomsKeyword_7_0()); }
	'axioms'
	{ after(grammarAccess.getXContextAccess().getAxiomsKeyword_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XContext__Group_7__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__Group_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getXContextAccess().getAxiomsAssignment_7_1()); }
		(rule__XContext__AxiomsAssignment_7_1)
		{ after(grammarAccess.getXContextAccess().getAxiomsAssignment_7_1()); }
	)
	(
		{ before(grammarAccess.getXContextAccess().getAxiomsAssignment_7_1()); }
		(rule__XContext__AxiomsAssignment_7_1)*
		{ after(grammarAccess.getXContextAccess().getAxiomsAssignment_7_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__XCarrierSet__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XCarrierSet__Group__0__Impl
	rule__XCarrierSet__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__XCarrierSet__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXCarrierSetAccess().getCarrierSetAction_0()); }
	()
	{ after(grammarAccess.getXCarrierSetAccess().getCarrierSetAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XCarrierSet__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XCarrierSet__Group__1__Impl
	rule__XCarrierSet__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__XCarrierSet__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXCarrierSetAccess().getCommentAssignment_1()); }
	(rule__XCarrierSet__CommentAssignment_1)?
	{ after(grammarAccess.getXCarrierSetAccess().getCommentAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XCarrierSet__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XCarrierSet__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__XCarrierSet__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXCarrierSetAccess().getNameAssignment_2()); }
	(rule__XCarrierSet__NameAssignment_2)
	{ after(grammarAccess.getXCarrierSetAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__XConstant__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XConstant__Group__0__Impl
	rule__XConstant__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__XConstant__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXConstantAccess().getConstantAction_0()); }
	()
	{ after(grammarAccess.getXConstantAccess().getConstantAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XConstant__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XConstant__Group__1__Impl
	rule__XConstant__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__XConstant__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXConstantAccess().getCommentAssignment_1()); }
	(rule__XConstant__CommentAssignment_1)?
	{ after(grammarAccess.getXConstantAccess().getCommentAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XConstant__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XConstant__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__XConstant__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXConstantAccess().getNameAssignment_2()); }
	(rule__XConstant__NameAssignment_2)
	{ after(grammarAccess.getXConstantAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__XAxiom__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XAxiom__Group__0__Impl
	rule__XAxiom__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXAxiomAccess().getAxiomAction_0()); }
	()
	{ after(grammarAccess.getXAxiomAccess().getAxiomAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XAxiom__Group__1__Impl
	rule__XAxiom__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXAxiomAccess().getCommentAssignment_1()); }
	(rule__XAxiom__CommentAssignment_1)?
	{ after(grammarAccess.getXAxiomAccess().getCommentAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XAxiom__Group__2__Impl
	rule__XAxiom__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXAxiomAccess().getNameAssignment_2()); }
	(rule__XAxiom__NameAssignment_2)
	{ after(grammarAccess.getXAxiomAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XAxiom__Group__3__Impl
	rule__XAxiom__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXAxiomAccess().getPredicateAssignment_3()); }
	(rule__XAxiom__PredicateAssignment_3)
	{ after(grammarAccess.getXAxiomAccess().getPredicateAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XAxiom__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXAxiomAccess().getTheoremAssignment_4()); }
	(rule__XAxiom__TheoremAssignment_4)?
	{ after(grammarAccess.getXAxiomAccess().getTheoremAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__XContext__CommentAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXContextAccess().getCommentAlternatives_1_0()); }
		(rule__XContext__CommentAlternatives_1_0)
		{ after(grammarAccess.getXContextAccess().getCommentAlternatives_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__NameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXContextAccess().getNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getXContextAccess().getNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__ExtendsAssignment_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXContextAccess().getExtendsContextCrossReference_4_1_0()); }
		(
			{ before(grammarAccess.getXContextAccess().getExtendsContextIDTerminalRuleCall_4_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getXContextAccess().getExtendsContextIDTerminalRuleCall_4_1_0_1()); }
		)
		{ after(grammarAccess.getXContextAccess().getExtendsContextCrossReference_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__SetsAssignment_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXContextAccess().getSetsXCarrierSetParserRuleCall_5_1_0()); }
		ruleXCarrierSet
		{ after(grammarAccess.getXContextAccess().getSetsXCarrierSetParserRuleCall_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__ConstantsAssignment_6_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXContextAccess().getConstantsXConstantParserRuleCall_6_1_0()); }
		ruleXConstant
		{ after(grammarAccess.getXContextAccess().getConstantsXConstantParserRuleCall_6_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XContext__AxiomsAssignment_7_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXContextAccess().getAxiomsXAxiomParserRuleCall_7_1_0()); }
		ruleXAxiom
		{ after(grammarAccess.getXContextAccess().getAxiomsXAxiomParserRuleCall_7_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XCarrierSet__CommentAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXCarrierSetAccess().getCommentAlternatives_1_0()); }
		(rule__XCarrierSet__CommentAlternatives_1_0)
		{ after(grammarAccess.getXCarrierSetAccess().getCommentAlternatives_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XCarrierSet__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXCarrierSetAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getXCarrierSetAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XConstant__CommentAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXConstantAccess().getCommentAlternatives_1_0()); }
		(rule__XConstant__CommentAlternatives_1_0)
		{ after(grammarAccess.getXConstantAccess().getCommentAlternatives_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XConstant__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXConstantAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getXConstantAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__CommentAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXAxiomAccess().getCommentAlternatives_1_0()); }
		(rule__XAxiom__CommentAlternatives_1_0)
		{ after(grammarAccess.getXAxiomAccess().getCommentAlternatives_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXAxiomAccess().getNameXLABELTerminalRuleCall_2_0()); }
		RULE_XLABEL
		{ after(grammarAccess.getXAxiomAccess().getNameXLABELTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__PredicateAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXAxiomAccess().getPredicateSTRINGTerminalRuleCall_3_0()); }
		RULE_STRING
		{ after(grammarAccess.getXAxiomAccess().getPredicateSTRINGTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XAxiom__TheoremAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXAxiomAccess().getTheoremTheoremKeyword_4_0()); }
		(
			{ before(grammarAccess.getXAxiomAccess().getTheoremTheoremKeyword_4_0()); }
			'theorem'
			{ after(grammarAccess.getXAxiomAccess().getTheoremTheoremKeyword_4_0()); }
		)
		{ after(grammarAccess.getXAxiomAccess().getTheoremTheoremKeyword_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_XLABEL : '@' ~(':')+ ':';

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

/*
 * generated by Xtext 2.10.0
 */
grammar InternalXContext;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package ac.soton.eventb.xtext.context.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package ac.soton.eventb.xtext.context.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import ac.soton.eventb.xtext.context.services.XContextGrammarAccess;

}

@parser::members {

 	private XContextGrammarAccess grammarAccess;

    public InternalXContextParser(TokenStream input, XContextGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "XContext";
   	}

   	@Override
   	protected XContextGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleXContext
entryRuleXContext returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXContextRule()); }
	iv_ruleXContext=ruleXContext
	{ $current=$iv_ruleXContext.current; }
	EOF;

// Rule XContext
ruleXContext returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getXContextAccess().getContextAction_0(),
					$current);
			}
		)
		(
			(
				(
					lv_comment_1_1=RULE_ML_COMMENT
					{
						newLeafNode(lv_comment_1_1, grammarAccess.getXContextAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXContextRule());
						}
						setWithLastConsumed(
							$current,
							"comment",
							lv_comment_1_1,
							"org.eclipse.xtext.common.Terminals.ML_COMMENT");
					}
					    |
					lv_comment_1_2=RULE_SL_COMMENT
					{
						newLeafNode(lv_comment_1_2, grammarAccess.getXContextAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXContextRule());
						}
						setWithLastConsumed(
							$current,
							"comment",
							lv_comment_1_2,
							"org.eclipse.xtext.common.Terminals.SL_COMMENT");
					}
				)
			)
		)?
		otherlv_2='context'
		{
			newLeafNode(otherlv_2, grammarAccess.getXContextAccess().getContextKeyword_2());
		}
		(
			(
				lv_name_3_0=RULE_ID
				{
					newLeafNode(lv_name_3_0, grammarAccess.getXContextAccess().getNameIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXContextRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_3_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			otherlv_4='extends'
			{
				newLeafNode(otherlv_4, grammarAccess.getXContextAccess().getExtendsKeyword_4_0());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXContextRule());
						}
					}
					otherlv_5=RULE_ID
					{
						newLeafNode(otherlv_5, grammarAccess.getXContextAccess().getExtendsContextCrossReference_4_1_0());
					}
				)
			)+
		)?
		(
			otherlv_6='sets'
			{
				newLeafNode(otherlv_6, grammarAccess.getXContextAccess().getSetsKeyword_5_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getXContextAccess().getSetsXCarrierSetParserRuleCall_5_1_0());
					}
					lv_sets_7_0=ruleXCarrierSet
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getXContextRule());
						}
						add(
							$current,
							"sets",
							lv_sets_7_0,
							"ac.soton.eventb.xtext.context.XContext.XCarrierSet");
						afterParserOrEnumRuleCall();
					}
				)
			)+
		)?
		(
			otherlv_8='constants'
			{
				newLeafNode(otherlv_8, grammarAccess.getXContextAccess().getConstantsKeyword_6_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getXContextAccess().getConstantsXConstantParserRuleCall_6_1_0());
					}
					lv_constants_9_0=ruleXConstant
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getXContextRule());
						}
						add(
							$current,
							"constants",
							lv_constants_9_0,
							"ac.soton.eventb.xtext.context.XContext.XConstant");
						afterParserOrEnumRuleCall();
					}
				)
			)+
		)?
		(
			otherlv_10='axioms'
			{
				newLeafNode(otherlv_10, grammarAccess.getXContextAccess().getAxiomsKeyword_7_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getXContextAccess().getAxiomsXAxiomParserRuleCall_7_1_0());
					}
					lv_axioms_11_0=ruleXAxiom
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getXContextRule());
						}
						add(
							$current,
							"axioms",
							lv_axioms_11_0,
							"ac.soton.eventb.xtext.context.XContext.XAxiom");
						afterParserOrEnumRuleCall();
					}
				)
			)+
		)?
		otherlv_12='end'
		{
			newLeafNode(otherlv_12, grammarAccess.getXContextAccess().getEndKeyword_8());
		}
	)
;

// Entry rule entryRuleXCarrierSet
entryRuleXCarrierSet returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXCarrierSetRule()); }
	iv_ruleXCarrierSet=ruleXCarrierSet
	{ $current=$iv_ruleXCarrierSet.current; }
	EOF;

// Rule XCarrierSet
ruleXCarrierSet returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getXCarrierSetAccess().getCarrierSetAction_0(),
					$current);
			}
		)
		(
			(
				(
					lv_comment_1_1=RULE_ML_COMMENT
					{
						newLeafNode(lv_comment_1_1, grammarAccess.getXCarrierSetAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXCarrierSetRule());
						}
						setWithLastConsumed(
							$current,
							"comment",
							lv_comment_1_1,
							"org.eclipse.xtext.common.Terminals.ML_COMMENT");
					}
					    |
					lv_comment_1_2=RULE_SL_COMMENT
					{
						newLeafNode(lv_comment_1_2, grammarAccess.getXCarrierSetAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXCarrierSetRule());
						}
						setWithLastConsumed(
							$current,
							"comment",
							lv_comment_1_2,
							"org.eclipse.xtext.common.Terminals.SL_COMMENT");
					}
				)
			)
		)?
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getXCarrierSetAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXCarrierSetRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleXConstant
entryRuleXConstant returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXConstantRule()); }
	iv_ruleXConstant=ruleXConstant
	{ $current=$iv_ruleXConstant.current; }
	EOF;

// Rule XConstant
ruleXConstant returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getXConstantAccess().getConstantAction_0(),
					$current);
			}
		)
		(
			(
				(
					lv_comment_1_1=RULE_ML_COMMENT
					{
						newLeafNode(lv_comment_1_1, grammarAccess.getXConstantAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXConstantRule());
						}
						setWithLastConsumed(
							$current,
							"comment",
							lv_comment_1_1,
							"org.eclipse.xtext.common.Terminals.ML_COMMENT");
					}
					    |
					lv_comment_1_2=RULE_SL_COMMENT
					{
						newLeafNode(lv_comment_1_2, grammarAccess.getXConstantAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXConstantRule());
						}
						setWithLastConsumed(
							$current,
							"comment",
							lv_comment_1_2,
							"org.eclipse.xtext.common.Terminals.SL_COMMENT");
					}
				)
			)
		)?
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getXConstantAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXConstantRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleXAxiom
entryRuleXAxiom returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXAxiomRule()); }
	iv_ruleXAxiom=ruleXAxiom
	{ $current=$iv_ruleXAxiom.current; }
	EOF;

// Rule XAxiom
ruleXAxiom returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getXAxiomAccess().getAxiomAction_0(),
					$current);
			}
		)
		(
			(
				(
					lv_comment_1_1=RULE_ML_COMMENT
					{
						newLeafNode(lv_comment_1_1, grammarAccess.getXAxiomAccess().getCommentML_COMMENTTerminalRuleCall_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXAxiomRule());
						}
						setWithLastConsumed(
							$current,
							"comment",
							lv_comment_1_1,
							"org.eclipse.xtext.common.Terminals.ML_COMMENT");
					}
					    |
					lv_comment_1_2=RULE_SL_COMMENT
					{
						newLeafNode(lv_comment_1_2, grammarAccess.getXAxiomAccess().getCommentSL_COMMENTTerminalRuleCall_1_0_1());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXAxiomRule());
						}
						setWithLastConsumed(
							$current,
							"comment",
							lv_comment_1_2,
							"org.eclipse.xtext.common.Terminals.SL_COMMENT");
					}
				)
			)
		)?
		(
			(
				lv_name_2_0=RULE_XLABEL
				{
					newLeafNode(lv_name_2_0, grammarAccess.getXAxiomAccess().getNameXLABELTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"ac.soton.eventb.xtext.context.XContext.XLABEL");
				}
			)
		)
		(
			(
				lv_predicate_3_0=RULE_STRING
				{
					newLeafNode(lv_predicate_3_0, grammarAccess.getXAxiomAccess().getPredicateSTRINGTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomRule());
					}
					setWithLastConsumed(
						$current,
						"predicate",
						lv_predicate_3_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
		(
			(
				lv_theorem_4_0='theorem'
				{
					newLeafNode(lv_theorem_4_0, grammarAccess.getXAxiomAccess().getTheoremTheoremKeyword_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomRule());
					}
					setWithLastConsumed($current, "theorem", true, "theorem");
				}
			)
		)?
	)
;

RULE_XLABEL : '@' ~(':')+ ':';

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

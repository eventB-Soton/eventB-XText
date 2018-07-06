/*
 * generated by Xtext 2.13.0
 */
grammar InternalXContext;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package ac.soton.xeventb.xcontext.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package ac.soton.xeventb.xcontext.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import ac.soton.xeventb.xcontext.services.XContextGrammarAccess;

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
						"ac.soton.xeventb.xcontext.XContext.ID");
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
					{
						newCompositeNode(grammarAccess.getXContextAccess().getExtendsContextCrossReference_4_1_0());
					}
					ruleQualifiedName
					{
						afterParserOrEnumRuleCall();
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
							"ac.soton.xeventb.xcontext.XContext.XCarrierSet");
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
							"ac.soton.xeventb.xcontext.XContext.XConstant");
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
							"ac.soton.xeventb.xcontext.XContext.XAxiom");
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

// Entry rule entryRuleQualifiedName
entryRuleQualifiedName returns [String current=null]:
	{ newCompositeNode(grammarAccess.getQualifiedNameRule()); }
	iv_ruleQualifiedName=ruleQualifiedName
	{ $current=$iv_ruleQualifiedName.current.getText(); }
	EOF;

// Rule QualifiedName
ruleQualifiedName returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_ID_0=RULE_ID
		{
			$current.merge(this_ID_0);
		}
		{
			newLeafNode(this_ID_0, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0());
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0());
			}
			this_ID_2=RULE_ID
			{
				$current.merge(this_ID_2);
			}
			{
				newLeafNode(this_ID_2, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1());
			}
		)*
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
		{
			newCompositeNode(grammarAccess.getXCarrierSetAccess().getXCarrierSetNoCommentParserRuleCall_0());
		}
		this_XCarrierSetNoComment_0=ruleXCarrierSetNoComment
		{
			$current = $this_XCarrierSetNoComment_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getXCarrierSetAccess().getXCarrierSetMLCommentParserRuleCall_1());
		}
		this_XCarrierSetMLComment_1=ruleXCarrierSetMLComment
		{
			$current = $this_XCarrierSetMLComment_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getXCarrierSetAccess().getXCarrierSetSLCommentParserRuleCall_2());
		}
		this_XCarrierSetSLComment_2=ruleXCarrierSetSLComment
		{
			$current = $this_XCarrierSetSLComment_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleXCarrierSetNoComment
entryRuleXCarrierSetNoComment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXCarrierSetNoCommentRule()); }
	iv_ruleXCarrierSetNoComment=ruleXCarrierSetNoComment
	{ $current=$iv_ruleXCarrierSetNoComment.current; }
	EOF;

// Rule XCarrierSetNoComment
ruleXCarrierSetNoComment returns [EObject current=null]
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
					grammarAccess.getXCarrierSetNoCommentAccess().getCarrierSetAction_0(),
					$current);
			}
		)
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getXCarrierSetNoCommentAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXCarrierSetNoCommentRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"ac.soton.xeventb.xcontext.XContext.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleXCarrierSetMLComment
entryRuleXCarrierSetMLComment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXCarrierSetMLCommentRule()); }
	iv_ruleXCarrierSetMLComment=ruleXCarrierSetMLComment
	{ $current=$iv_ruleXCarrierSetMLComment.current; }
	EOF;

// Rule XCarrierSetMLComment
ruleXCarrierSetMLComment returns [EObject current=null]
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
					grammarAccess.getXCarrierSetMLCommentAccess().getCarrierSetAction_0(),
					$current);
			}
		)
		(
			(
				lv_comment_1_0=RULE_ML_COMMENT
				{
					newLeafNode(lv_comment_1_0, grammarAccess.getXCarrierSetMLCommentAccess().getCommentML_COMMENTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXCarrierSetMLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"comment",
						lv_comment_1_0,
						"org.eclipse.xtext.common.Terminals.ML_COMMENT");
				}
			)
		)
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getXCarrierSetMLCommentAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXCarrierSetMLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"ac.soton.xeventb.xcontext.XContext.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleXCarrierSetSLComment
entryRuleXCarrierSetSLComment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXCarrierSetSLCommentRule()); }
	iv_ruleXCarrierSetSLComment=ruleXCarrierSetSLComment
	{ $current=$iv_ruleXCarrierSetSLComment.current; }
	EOF;

// Rule XCarrierSetSLComment
ruleXCarrierSetSLComment returns [EObject current=null]
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
					grammarAccess.getXCarrierSetSLCommentAccess().getCarrierSetAction_0(),
					$current);
			}
		)
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getXCarrierSetSLCommentAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXCarrierSetSLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"ac.soton.xeventb.xcontext.XContext.ID");
				}
			)
		)
		(
			(
				lv_comment_2_0=RULE_SL_COMMENT
				{
					newLeafNode(lv_comment_2_0, grammarAccess.getXCarrierSetSLCommentAccess().getCommentSL_COMMENTTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXCarrierSetSLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"comment",
						lv_comment_2_0,
						"org.eclipse.xtext.common.Terminals.SL_COMMENT");
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
		{
			newCompositeNode(grammarAccess.getXConstantAccess().getXConstantNoCommentParserRuleCall_0());
		}
		this_XConstantNoComment_0=ruleXConstantNoComment
		{
			$current = $this_XConstantNoComment_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getXConstantAccess().getXConstantMLCommentParserRuleCall_1());
		}
		this_XConstantMLComment_1=ruleXConstantMLComment
		{
			$current = $this_XConstantMLComment_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getXConstantAccess().getXConstantSLCommentParserRuleCall_2());
		}
		this_XConstantSLComment_2=ruleXConstantSLComment
		{
			$current = $this_XConstantSLComment_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleXConstantNoComment
entryRuleXConstantNoComment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXConstantNoCommentRule()); }
	iv_ruleXConstantNoComment=ruleXConstantNoComment
	{ $current=$iv_ruleXConstantNoComment.current; }
	EOF;

// Rule XConstantNoComment
ruleXConstantNoComment returns [EObject current=null]
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
					grammarAccess.getXConstantNoCommentAccess().getConstantAction_0(),
					$current);
			}
		)
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getXConstantNoCommentAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXConstantNoCommentRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"ac.soton.xeventb.xcontext.XContext.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleXConstantMLComment
entryRuleXConstantMLComment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXConstantMLCommentRule()); }
	iv_ruleXConstantMLComment=ruleXConstantMLComment
	{ $current=$iv_ruleXConstantMLComment.current; }
	EOF;

// Rule XConstantMLComment
ruleXConstantMLComment returns [EObject current=null]
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
					grammarAccess.getXConstantMLCommentAccess().getConstantAction_0(),
					$current);
			}
		)
		(
			(
				lv_comment_1_0=RULE_ML_COMMENT
				{
					newLeafNode(lv_comment_1_0, grammarAccess.getXConstantMLCommentAccess().getCommentML_COMMENTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXConstantMLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"comment",
						lv_comment_1_0,
						"org.eclipse.xtext.common.Terminals.ML_COMMENT");
				}
			)
		)
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getXConstantMLCommentAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXConstantMLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"ac.soton.xeventb.xcontext.XContext.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleXConstantSLComment
entryRuleXConstantSLComment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXConstantSLCommentRule()); }
	iv_ruleXConstantSLComment=ruleXConstantSLComment
	{ $current=$iv_ruleXConstantSLComment.current; }
	EOF;

// Rule XConstantSLComment
ruleXConstantSLComment returns [EObject current=null]
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
					grammarAccess.getXConstantSLCommentAccess().getConstantAction_0(),
					$current);
			}
		)
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getXConstantSLCommentAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXConstantSLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"ac.soton.xeventb.xcontext.XContext.ID");
				}
			)
		)
		(
			(
				lv_comment_2_0=RULE_SL_COMMENT
				{
					newLeafNode(lv_comment_2_0, grammarAccess.getXConstantSLCommentAccess().getCommentSL_COMMENTTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXConstantSLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"comment",
						lv_comment_2_0,
						"org.eclipse.xtext.common.Terminals.SL_COMMENT");
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
		{
			newCompositeNode(grammarAccess.getXAxiomAccess().getXAxiomNoCommentParserRuleCall_0());
		}
		this_XAxiomNoComment_0=ruleXAxiomNoComment
		{
			$current = $this_XAxiomNoComment_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getXAxiomAccess().getXAxiomMLCommentParserRuleCall_1());
		}
		this_XAxiomMLComment_1=ruleXAxiomMLComment
		{
			$current = $this_XAxiomMLComment_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getXAxiomAccess().getXAxiomSLCommentParserRuleCall_2());
		}
		this_XAxiomSLComment_2=ruleXAxiomSLComment
		{
			$current = $this_XAxiomSLComment_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleXAxiomNoComment
entryRuleXAxiomNoComment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXAxiomNoCommentRule()); }
	iv_ruleXAxiomNoComment=ruleXAxiomNoComment
	{ $current=$iv_ruleXAxiomNoComment.current; }
	EOF;

// Rule XAxiomNoComment
ruleXAxiomNoComment returns [EObject current=null]
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
					grammarAccess.getXAxiomNoCommentAccess().getAxiomAction_0(),
					$current);
			}
		)
		(
			(
				lv_name_1_0=RULE_XLABEL
				{
					newLeafNode(lv_name_1_0, grammarAccess.getXAxiomNoCommentAccess().getNameXLABELTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomNoCommentRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"ac.soton.xeventb.xcontext.XContext.XLABEL");
				}
			)
		)
		(
			(
				lv_predicate_2_0=RULE_STRING
				{
					newLeafNode(lv_predicate_2_0, grammarAccess.getXAxiomNoCommentAccess().getPredicateSTRINGTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomNoCommentRule());
					}
					setWithLastConsumed(
						$current,
						"predicate",
						lv_predicate_2_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
		(
			(
				lv_theorem_3_0='theorem'
				{
					newLeafNode(lv_theorem_3_0, grammarAccess.getXAxiomNoCommentAccess().getTheoremTheoremKeyword_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomNoCommentRule());
					}
					setWithLastConsumed($current, "theorem", true, "theorem");
				}
			)
		)?
	)
;

// Entry rule entryRuleXAxiomMLComment
entryRuleXAxiomMLComment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXAxiomMLCommentRule()); }
	iv_ruleXAxiomMLComment=ruleXAxiomMLComment
	{ $current=$iv_ruleXAxiomMLComment.current; }
	EOF;

// Rule XAxiomMLComment
ruleXAxiomMLComment returns [EObject current=null]
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
					grammarAccess.getXAxiomMLCommentAccess().getAxiomAction_0(),
					$current);
			}
		)
		(
			(
				lv_comment_1_0=RULE_ML_COMMENT
				{
					newLeafNode(lv_comment_1_0, grammarAccess.getXAxiomMLCommentAccess().getCommentML_COMMENTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomMLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"comment",
						lv_comment_1_0,
						"org.eclipse.xtext.common.Terminals.ML_COMMENT");
				}
			)
		)
		(
			(
				lv_name_2_0=RULE_XLABEL
				{
					newLeafNode(lv_name_2_0, grammarAccess.getXAxiomMLCommentAccess().getNameXLABELTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomMLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"ac.soton.xeventb.xcontext.XContext.XLABEL");
				}
			)
		)
		(
			(
				lv_predicate_3_0=RULE_STRING
				{
					newLeafNode(lv_predicate_3_0, grammarAccess.getXAxiomMLCommentAccess().getPredicateSTRINGTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomMLCommentRule());
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
					newLeafNode(lv_theorem_4_0, grammarAccess.getXAxiomMLCommentAccess().getTheoremTheoremKeyword_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomMLCommentRule());
					}
					setWithLastConsumed($current, "theorem", true, "theorem");
				}
			)
		)?
	)
;

// Entry rule entryRuleXAxiomSLComment
entryRuleXAxiomSLComment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXAxiomSLCommentRule()); }
	iv_ruleXAxiomSLComment=ruleXAxiomSLComment
	{ $current=$iv_ruleXAxiomSLComment.current; }
	EOF;

// Rule XAxiomSLComment
ruleXAxiomSLComment returns [EObject current=null]
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
					grammarAccess.getXAxiomSLCommentAccess().getAxiomAction_0(),
					$current);
			}
		)
		(
			(
				lv_name_1_0=RULE_XLABEL
				{
					newLeafNode(lv_name_1_0, grammarAccess.getXAxiomSLCommentAccess().getNameXLABELTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomSLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"ac.soton.xeventb.xcontext.XContext.XLABEL");
				}
			)
		)
		(
			(
				lv_predicate_2_0=RULE_STRING
				{
					newLeafNode(lv_predicate_2_0, grammarAccess.getXAxiomSLCommentAccess().getPredicateSTRINGTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomSLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"predicate",
						lv_predicate_2_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)
		(
			(
				lv_theorem_3_0='theorem'
				{
					newLeafNode(lv_theorem_3_0, grammarAccess.getXAxiomSLCommentAccess().getTheoremTheoremKeyword_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomSLCommentRule());
					}
					setWithLastConsumed($current, "theorem", true, "theorem");
				}
			)
		)?
		(
			(
				lv_comment_4_0=RULE_SL_COMMENT
				{
					newLeafNode(lv_comment_4_0, grammarAccess.getXAxiomSLCommentAccess().getCommentSL_COMMENTTerminalRuleCall_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getXAxiomSLCommentRule());
					}
					setWithLastConsumed(
						$current,
						"comment",
						lv_comment_4_0,
						"org.eclipse.xtext.common.Terminals.SL_COMMENT");
				}
			)
		)
	)
;

RULE_XLABEL : '@' ~(':')+ ':';

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_'|'i'..'\uFFDC') ('a'..'z'|'A'..'Z'|'_'|'i'..'\uFFDC'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

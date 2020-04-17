/*
 * generated by Xtext 2.21.0
 */
package ac.soton.xeventb.xmachine.serializer;

import ac.soton.xeventb.xmachine.services.XMachineGrammarAccess;
import com.google.inject.Inject;
import java.util.List;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.IGrammarAccess;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AbstractElementAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AlternativeAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.TokenAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynNavigable;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;

@SuppressWarnings("all")
public class XMachineSyntacticSequencer extends AbstractSyntacticSequencer {

	protected XMachineGrammarAccess grammarAccess;
	protected AbstractElementAlias match_Machine_SeesKeyword_4_2_0_q;
	protected AbstractElementAlias match_XEvent_BeginKeyword_8_0_1_or_ThenKeyword_8_0_0;
	protected AbstractElementAlias match_XEvent_WhenKeyword_7_0_1_or_WhereKeyword_7_0_0;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (XMachineGrammarAccess) access;
		match_Machine_SeesKeyword_4_2_0_q = new TokenAlias(false, true, grammarAccess.getMachineAccess().getSeesKeyword_4_2_0());
		match_XEvent_BeginKeyword_8_0_1_or_ThenKeyword_8_0_0 = new AlternativeAlias(false, false, new TokenAlias(false, false, grammarAccess.getXEventAccess().getBeginKeyword_8_0_1()), new TokenAlias(false, false, grammarAccess.getXEventAccess().getThenKeyword_8_0_0()));
		match_XEvent_WhenKeyword_7_0_1_or_WhereKeyword_7_0_0 = new AlternativeAlias(false, false, new TokenAlias(false, false, grammarAccess.getXEventAccess().getWhenKeyword_7_0_1()), new TokenAlias(false, false, grammarAccess.getXEventAccess().getWhereKeyword_7_0_0()));
	}
	
	@Override
	protected String getUnassignedRuleCallToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		return "";
	}
	
	
	@Override
	protected void emitUnassignedTokens(EObject semanticObject, ISynTransition transition, INode fromNode, INode toNode) {
		if (transition.getAmbiguousSyntaxes().isEmpty()) return;
		List<INode> transitionNodes = collectNodes(fromNode, toNode);
		for (AbstractElementAlias syntax : transition.getAmbiguousSyntaxes()) {
			List<INode> syntaxNodes = getNodesFor(transitionNodes, syntax);
			if (match_Machine_SeesKeyword_4_2_0_q.equals(syntax))
				emit_Machine_SeesKeyword_4_2_0_q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_XEvent_BeginKeyword_8_0_1_or_ThenKeyword_8_0_0.equals(syntax))
				emit_XEvent_BeginKeyword_8_0_1_or_ThenKeyword_8_0_0(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_XEvent_WhenKeyword_7_0_1_or_WhereKeyword_7_0_0.equals(syntax))
				emit_XEvent_WhenKeyword_7_0_1_or_WhereKeyword_7_0_0(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * Ambiguous syntax:
	 *     'sees'?
	 *
	 * This ambiguous syntax occurs at:
	 *     sees+=[Context|ID] (ambiguity) sees+=[Context|ID]
	 */
	protected void emit_Machine_SeesKeyword_4_2_0_q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     'then' | 'begin'
	 *
	 * This ambiguous syntax occurs at:
	 *     extensions+=EventSync (ambiguity) actions+=XAction
	 *     guards+=XGuard (ambiguity) actions+=XAction
	 *     name=ID (ambiguity) actions+=XAction
	 *     parameters+=XParameter (ambiguity) actions+=XAction
	 *     refines+=[Event|ID] (ambiguity) actions+=XAction
	 */
	protected void emit_XEvent_BeginKeyword_8_0_1_or_ThenKeyword_8_0_0(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * Ambiguous syntax:
	 *     'where' | 'when'
	 *
	 * This ambiguous syntax occurs at:
	 *     extensions+=EventSync (ambiguity) guards+=XGuard
	 *     name=ID (ambiguity) guards+=XGuard
	 *     parameters+=XParameter (ambiguity) guards+=XGuard
	 *     refines+=[Event|ID] (ambiguity) guards+=XGuard
	 */
	protected void emit_XEvent_WhenKeyword_7_0_1_or_WhereKeyword_7_0_0(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}

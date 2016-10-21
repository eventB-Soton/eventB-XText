/*
 * generated by Xtext 2.10.0
 */
package ac.soton.eventb.xtext.context.ide.contentassist.antlr;

import ac.soton.eventb.xtext.context.ide.contentassist.antlr.internal.InternalXContextParser;
import ac.soton.eventb.xtext.context.services.XContextGrammarAccess;
import com.google.inject.Inject;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.antlr.runtime.RecognitionException;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.FollowElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;

public class XContextParser extends AbstractContentAssistParser {

	@Inject
	private XContextGrammarAccess grammarAccess;

	private Map<AbstractElement, String> nameMappings;

	@Override
	protected InternalXContextParser createParser() {
		InternalXContextParser result = new InternalXContextParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}

	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getXContextAccess().getCommentAlternatives_1_0(), "rule__XContext__CommentAlternatives_1_0");
					put(grammarAccess.getXCarrierSetAccess().getCommentAlternatives_1_0(), "rule__XCarrierSet__CommentAlternatives_1_0");
					put(grammarAccess.getXConstantAccess().getCommentAlternatives_1_0(), "rule__XConstant__CommentAlternatives_1_0");
					put(grammarAccess.getXAxiomAccess().getCommentAlternatives_1_0(), "rule__XAxiom__CommentAlternatives_1_0");
					put(grammarAccess.getXContextAccess().getGroup(), "rule__XContext__Group__0");
					put(grammarAccess.getXContextAccess().getGroup_4(), "rule__XContext__Group_4__0");
					put(grammarAccess.getXContextAccess().getGroup_5(), "rule__XContext__Group_5__0");
					put(grammarAccess.getXContextAccess().getGroup_6(), "rule__XContext__Group_6__0");
					put(grammarAccess.getXContextAccess().getGroup_7(), "rule__XContext__Group_7__0");
					put(grammarAccess.getXCarrierSetAccess().getGroup(), "rule__XCarrierSet__Group__0");
					put(grammarAccess.getXConstantAccess().getGroup(), "rule__XConstant__Group__0");
					put(grammarAccess.getXAxiomAccess().getGroup(), "rule__XAxiom__Group__0");
					put(grammarAccess.getXContextAccess().getCommentAssignment_1(), "rule__XContext__CommentAssignment_1");
					put(grammarAccess.getXContextAccess().getNameAssignment_3(), "rule__XContext__NameAssignment_3");
					put(grammarAccess.getXContextAccess().getExtendsAssignment_4_1(), "rule__XContext__ExtendsAssignment_4_1");
					put(grammarAccess.getXContextAccess().getSetsAssignment_5_1(), "rule__XContext__SetsAssignment_5_1");
					put(grammarAccess.getXContextAccess().getConstantsAssignment_6_1(), "rule__XContext__ConstantsAssignment_6_1");
					put(grammarAccess.getXContextAccess().getAxiomsAssignment_7_1(), "rule__XContext__AxiomsAssignment_7_1");
					put(grammarAccess.getXCarrierSetAccess().getCommentAssignment_1(), "rule__XCarrierSet__CommentAssignment_1");
					put(grammarAccess.getXCarrierSetAccess().getNameAssignment_2(), "rule__XCarrierSet__NameAssignment_2");
					put(grammarAccess.getXConstantAccess().getCommentAssignment_1(), "rule__XConstant__CommentAssignment_1");
					put(grammarAccess.getXConstantAccess().getNameAssignment_2(), "rule__XConstant__NameAssignment_2");
					put(grammarAccess.getXAxiomAccess().getCommentAssignment_1(), "rule__XAxiom__CommentAssignment_1");
					put(grammarAccess.getXAxiomAccess().getNameAssignment_2(), "rule__XAxiom__NameAssignment_2");
					put(grammarAccess.getXAxiomAccess().getPredicateAssignment_3(), "rule__XAxiom__PredicateAssignment_3");
					put(grammarAccess.getXAxiomAccess().getTheoremAssignment_4(), "rule__XAxiom__TheoremAssignment_4");
				}
			};
		}
		return nameMappings.get(element);
	}

	@Override
	protected Collection<FollowElement> getFollowElements(AbstractInternalContentAssistParser parser) {
		try {
			InternalXContextParser typedParser = (InternalXContextParser) parser;
			typedParser.entryRuleXContext();
			return typedParser.getFollowElements();
		} catch(RecognitionException ex) {
			throw new RuntimeException(ex);
		}
	}

	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS" };
	}

	public XContextGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(XContextGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}

/*
 * generated by Xtext 2.14.0
 */
package ac.soton.xeventb.camillex.ide.contentassist.antlr;

import ac.soton.xeventb.camillex.ide.contentassist.antlr.internal.InternalEventBComponentParser;
import ac.soton.xeventb.camillex.services.EventBComponentGrammarAccess;
import com.google.common.collect.ImmutableMap;
import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.Map;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.AbstractContentAssistParser;

public class EventBComponentParser extends AbstractContentAssistParser {

	@Singleton
	public static final class NameMappings {
		
		private final Map<AbstractElement, String> mappings;
		
		@Inject
		public NameMappings(EventBComponentGrammarAccess grammarAccess) {
			ImmutableMap.Builder<AbstractElement, String> builder = ImmutableMap.builder();
			init(builder, grammarAccess);
			this.mappings = builder.build();
		}
		
		public String getRuleName(AbstractElement element) {
			return mappings.get(element);
		}
		
		private static void init(ImmutableMap.Builder<AbstractElement, String> builder, EventBComponentGrammarAccess grammarAccess) {
			builder.put(grammarAccess.getEventBComponentAccess().getAlternatives(), "rule__EventBComponent__Alternatives");
			builder.put(grammarAccess.getEventAccess().getAlternatives_5(), "rule__Event__Alternatives_5");
			builder.put(grammarAccess.getXPredicateAccess().getAlternatives(), "rule__XPredicate__Alternatives");
			builder.put(grammarAccess.getEVENTB_IDENTIFIER_KEYWORDAccess().getAlternatives(), "rule__EVENTB_IDENTIFIER_KEYWORD__Alternatives");
			builder.put(grammarAccess.getEVENTB_PREDICATE_SYMBOLSAccess().getAlternatives(), "rule__EVENTB_PREDICATE_SYMBOLS__Alternatives");
			builder.put(grammarAccess.getEVENTB_EXPRESSION_SYMBOLSAccess().getAlternatives(), "rule__EVENTB_EXPRESSION_SYMBOLS__Alternatives");
			builder.put(grammarAccess.getConvergenceAccess().getAlternatives(), "rule__Convergence__Alternatives");
			builder.put(grammarAccess.getQualifiedNameAccess().getGroup(), "rule__QualifiedName__Group__0");
			builder.put(grammarAccess.getQualifiedNameAccess().getGroup_1(), "rule__QualifiedName__Group_1__0");
			builder.put(grammarAccess.getMachineAccess().getGroup(), "rule__Machine__Group__0");
			builder.put(grammarAccess.getMachineAccess().getGroup_4(), "rule__Machine__Group_4__0");
			builder.put(grammarAccess.getMachineAccess().getGroup_5(), "rule__Machine__Group_5__0");
			builder.put(grammarAccess.getMachineAccess().getGroup_6(), "rule__Machine__Group_6__0");
			builder.put(grammarAccess.getMachineAccess().getGroup_7(), "rule__Machine__Group_7__0");
			builder.put(grammarAccess.getMachineAccess().getGroup_8(), "rule__Machine__Group_8__0");
			builder.put(grammarAccess.getMachineAccess().getGroup_9(), "rule__Machine__Group_9__0");
			builder.put(grammarAccess.getIncludesAccess().getGroup(), "rule__Includes__Group__0");
			builder.put(grammarAccess.getIncludesAccess().getGroup_1(), "rule__Includes__Group_1__0");
			builder.put(grammarAccess.getIncludesAccess().getGroup_2(), "rule__Includes__Group_2__0");
			builder.put(grammarAccess.getIncludesAccess().getGroup_3(), "rule__Includes__Group_3__0");
			builder.put(grammarAccess.getVariableAccess().getGroup(), "rule__Variable__Group__0");
			builder.put(grammarAccess.getInvariantAccess().getGroup(), "rule__Invariant__Group__0");
			builder.put(grammarAccess.getVariantAccess().getGroup(), "rule__Variant__Group__0");
			builder.put(grammarAccess.getEventAccess().getGroup(), "rule__Event__Group__0");
			builder.put(grammarAccess.getEventAccess().getGroup_4(), "rule__Event__Group_4__0");
			builder.put(grammarAccess.getEventAccess().getGroup_5_0(), "rule__Event__Group_5_0__0");
			builder.put(grammarAccess.getEventAccess().getGroup_5_0_0(), "rule__Event__Group_5_0_0__0");
			builder.put(grammarAccess.getEventAccess().getGroup_5_1(), "rule__Event__Group_5_1__0");
			builder.put(grammarAccess.getEventAccess().getGroup_5_1_2(), "rule__Event__Group_5_1_2__0");
			builder.put(grammarAccess.getEventAccess().getGroup_5_1_3(), "rule__Event__Group_5_1_3__0");
			builder.put(grammarAccess.getEventAccess().getGroup_5_2(), "rule__Event__Group_5_2__0");
			builder.put(grammarAccess.getEventAccess().getGroup_5_2_4(), "rule__Event__Group_5_2_4__0");
			builder.put(grammarAccess.getEventAccess().getGroup_5_2_5(), "rule__Event__Group_5_2_5__0");
			builder.put(grammarAccess.getEventSyncAccess().getGroup(), "rule__EventSync__Group__0");
			builder.put(grammarAccess.getEventSyncAccess().getGroup_1(), "rule__EventSync__Group_1__0");
			builder.put(grammarAccess.getEventSyncAccess().getGroup_1_1(), "rule__EventSync__Group_1_1__0");
			builder.put(grammarAccess.getParameterAccess().getGroup(), "rule__Parameter__Group__0");
			builder.put(grammarAccess.getGuardAccess().getGroup(), "rule__Guard__Group__0");
			builder.put(grammarAccess.getWitnessAccess().getGroup(), "rule__Witness__Group__0");
			builder.put(grammarAccess.getActionAccess().getGroup(), "rule__Action__Group__0");
			builder.put(grammarAccess.getEVENTB_EXPRESSION_SYMBOLSAccess().getGroup_32(), "rule__EVENTB_EXPRESSION_SYMBOLS__Group_32__0");
			builder.put(grammarAccess.getContextAccess().getGroup(), "rule__Context__Group__0");
			builder.put(grammarAccess.getContextAccess().getGroup_3(), "rule__Context__Group_3__0");
			builder.put(grammarAccess.getContextAccess().getGroup_4(), "rule__Context__Group_4__0");
			builder.put(grammarAccess.getContextAccess().getGroup_5(), "rule__Context__Group_5__0");
			builder.put(grammarAccess.getContextAccess().getGroup_6(), "rule__Context__Group_6__0");
			builder.put(grammarAccess.getCarrierSetAccess().getGroup(), "rule__CarrierSet__Group__0");
			builder.put(grammarAccess.getConstantAccess().getGroup(), "rule__Constant__Group__0");
			builder.put(grammarAccess.getAxiomAccess().getGroup(), "rule__Axiom__Group__0");
			builder.put(grammarAccess.getMachineAccess().getNameAssignment_2(), "rule__Machine__NameAssignment_2");
			builder.put(grammarAccess.getMachineAccess().getExtensionsAssignment_3(), "rule__Machine__ExtensionsAssignment_3");
			builder.put(grammarAccess.getMachineAccess().getRefinesAssignment_4_1(), "rule__Machine__RefinesAssignment_4_1");
			builder.put(grammarAccess.getMachineAccess().getSeesAssignment_5_1(), "rule__Machine__SeesAssignment_5_1");
			builder.put(grammarAccess.getMachineAccess().getVariablesAssignment_6_1(), "rule__Machine__VariablesAssignment_6_1");
			builder.put(grammarAccess.getMachineAccess().getInvariantsAssignment_7_1(), "rule__Machine__InvariantsAssignment_7_1");
			builder.put(grammarAccess.getMachineAccess().getVariantAssignment_8_1(), "rule__Machine__VariantAssignment_8_1");
			builder.put(grammarAccess.getMachineAccess().getEventsAssignment_9_1(), "rule__Machine__EventsAssignment_9_1");
			builder.put(grammarAccess.getMachineAccess().getEventsAssignment_9_2(), "rule__Machine__EventsAssignment_9_2");
			builder.put(grammarAccess.getIncludesAccess().getAbstractMachineAssignment_1_1(), "rule__Includes__AbstractMachineAssignment_1_1");
			builder.put(grammarAccess.getIncludesAccess().getConcreteMachineAssignment_2_1(), "rule__Includes__ConcreteMachineAssignment_2_1");
			builder.put(grammarAccess.getIncludesAccess().getPrefixesAssignment_3_1(), "rule__Includes__PrefixesAssignment_3_1");
			builder.put(grammarAccess.getIncludesAccess().getPrefixesAssignment_3_2(), "rule__Includes__PrefixesAssignment_3_2");
			builder.put(grammarAccess.getVariableAccess().getNameAssignment_1(), "rule__Variable__NameAssignment_1");
			builder.put(grammarAccess.getInvariantAccess().getNameAssignment_1(), "rule__Invariant__NameAssignment_1");
			builder.put(grammarAccess.getInvariantAccess().getPredicateAssignment_2(), "rule__Invariant__PredicateAssignment_2");
			builder.put(grammarAccess.getInvariantAccess().getTheoremAssignment_3(), "rule__Invariant__TheoremAssignment_3");
			builder.put(grammarAccess.getVariantAccess().getExpressionAssignment_1(), "rule__Variant__ExpressionAssignment_1");
			builder.put(grammarAccess.getEventAccess().getNameAssignment_1(), "rule__Event__NameAssignment_1");
			builder.put(grammarAccess.getEventAccess().getExtendedAssignment_2_0(), "rule__Event__ExtendedAssignment_2_0");
			builder.put(grammarAccess.getEventAccess().getConvergenceAssignment_2_1(), "rule__Event__ConvergenceAssignment_2_1");
			builder.put(grammarAccess.getEventAccess().getExtensionsAssignment_3(), "rule__Event__ExtensionsAssignment_3");
			builder.put(grammarAccess.getEventAccess().getRefinesAssignment_4_1(), "rule__Event__RefinesAssignment_4_1");
			builder.put(grammarAccess.getEventAccess().getWitnessesAssignment_5_0_0_1(), "rule__Event__WitnessesAssignment_5_0_0_1");
			builder.put(grammarAccess.getEventAccess().getActionsAssignment_5_0_2(), "rule__Event__ActionsAssignment_5_0_2");
			builder.put(grammarAccess.getEventAccess().getGuardsAssignment_5_1_1(), "rule__Event__GuardsAssignment_5_1_1");
			builder.put(grammarAccess.getEventAccess().getWitnessesAssignment_5_1_2_1(), "rule__Event__WitnessesAssignment_5_1_2_1");
			builder.put(grammarAccess.getEventAccess().getActionsAssignment_5_1_3_1(), "rule__Event__ActionsAssignment_5_1_3_1");
			builder.put(grammarAccess.getEventAccess().getParametersAssignment_5_2_1(), "rule__Event__ParametersAssignment_5_2_1");
			builder.put(grammarAccess.getEventAccess().getGuardsAssignment_5_2_3(), "rule__Event__GuardsAssignment_5_2_3");
			builder.put(grammarAccess.getEventAccess().getWitnessesAssignment_5_2_4_1(), "rule__Event__WitnessesAssignment_5_2_4_1");
			builder.put(grammarAccess.getEventAccess().getActionsAssignment_5_2_5_1(), "rule__Event__ActionsAssignment_5_2_5_1");
			builder.put(grammarAccess.getEventSyncAccess().getPrefixAssignment_1_1_0(), "rule__EventSync__PrefixAssignment_1_1_0");
			builder.put(grammarAccess.getEventSyncAccess().getSynchronisedEventAssignment_1_2(), "rule__EventSync__SynchronisedEventAssignment_1_2");
			builder.put(grammarAccess.getParameterAccess().getNameAssignment_1(), "rule__Parameter__NameAssignment_1");
			builder.put(grammarAccess.getGuardAccess().getNameAssignment_1(), "rule__Guard__NameAssignment_1");
			builder.put(grammarAccess.getGuardAccess().getPredicateAssignment_2(), "rule__Guard__PredicateAssignment_2");
			builder.put(grammarAccess.getGuardAccess().getTheoremAssignment_3(), "rule__Guard__TheoremAssignment_3");
			builder.put(grammarAccess.getWitnessAccess().getNameAssignment_1(), "rule__Witness__NameAssignment_1");
			builder.put(grammarAccess.getWitnessAccess().getPredicateAssignment_2(), "rule__Witness__PredicateAssignment_2");
			builder.put(grammarAccess.getActionAccess().getNameAssignment_1(), "rule__Action__NameAssignment_1");
			builder.put(grammarAccess.getActionAccess().getActionAssignment_2(), "rule__Action__ActionAssignment_2");
			builder.put(grammarAccess.getContextAccess().getNameAssignment_2(), "rule__Context__NameAssignment_2");
			builder.put(grammarAccess.getContextAccess().getExtendsAssignment_3_1(), "rule__Context__ExtendsAssignment_3_1");
			builder.put(grammarAccess.getContextAccess().getSetsAssignment_4_1(), "rule__Context__SetsAssignment_4_1");
			builder.put(grammarAccess.getContextAccess().getConstantsAssignment_5_1(), "rule__Context__ConstantsAssignment_5_1");
			builder.put(grammarAccess.getContextAccess().getAxiomsAssignment_6_1(), "rule__Context__AxiomsAssignment_6_1");
			builder.put(grammarAccess.getCarrierSetAccess().getNameAssignment_1(), "rule__CarrierSet__NameAssignment_1");
			builder.put(grammarAccess.getConstantAccess().getNameAssignment_1(), "rule__Constant__NameAssignment_1");
			builder.put(grammarAccess.getAxiomAccess().getNameAssignment_1(), "rule__Axiom__NameAssignment_1");
			builder.put(grammarAccess.getAxiomAccess().getPredicateAssignment_2(), "rule__Axiom__PredicateAssignment_2");
			builder.put(grammarAccess.getAxiomAccess().getTheoremAssignment_3(), "rule__Axiom__TheoremAssignment_3");
			builder.put(grammarAccess.getEventAccess().getUnorderedGroup_2(), "rule__Event__UnorderedGroup_2");
		}
	}
	
	@Inject
	private NameMappings nameMappings;

	@Inject
	private EventBComponentGrammarAccess grammarAccess;

	@Override
	protected InternalEventBComponentParser createParser() {
		InternalEventBComponentParser result = new InternalEventBComponentParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}

	@Override
	protected String getRuleName(AbstractElement element) {
		return nameMappings.getRuleName(element);
	}

	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}

	public EventBComponentGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(EventBComponentGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
	public NameMappings getNameMappings() {
		return nameMappings;
	}
	
	public void setNameMappings(NameMappings nameMappings) {
		this.nameMappings = nameMappings;
	}
}

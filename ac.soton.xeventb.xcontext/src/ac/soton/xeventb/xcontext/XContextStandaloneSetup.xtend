/*
 * generated by Xtext 2.10.0
 */
package ac.soton.xeventb.xcontext


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class XContextStandaloneSetup extends XContextStandaloneSetupGenerated {

	def static void doSetup() {
		new XContextStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}

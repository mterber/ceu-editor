/*
 * generated by Xtext 2.9.1
 */
package org.xtext.ceu


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class CeuStandaloneSetup extends CeuStandaloneSetupGenerated {

	def static void doSetup() {
		new CeuStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}

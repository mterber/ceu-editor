/*
 * generated by Xtext 2.10.0
 */
package org.xtext.ceu.tests

import com.google.inject.Inject
import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.xtext.ceu.ceu.Root
import org.eclipse.xtext.util.EmfFormatter

@RunWith(XtextRunner)
@InjectWith(CeuInjectorProvider)
class CeuParsingTest{

	@Inject
	ParseHelper<Root> parseHelper

	@Test 
	def void loadModel() {
		val result = parseHelper.parse('''
			1 + 4
		''')
		println(EmfFormatter.objToStr(result));
		Assert.assertNotNull(result)
	}

}

package org.xtext.ceu.ui.syntaxcoloring

import org.eclipse.xtext.ide.editor.syntaxcoloring.IHighlightedPositionAcceptor
import org.eclipse.xtext.ide.editor.syntaxcoloring.ISemanticHighlightingCalculator
import org.eclipse.xtext.nodemodel.INode
import org.eclipse.xtext.resource.XtextResource
import org.eclipse.xtext.util.CancelIndicator
import org.xtext.ceu.ceu.Dcl_int
import org.xtext.ceu.ceu.Dcl_ext1
import org.xtext.ceu.ceu.Dcl_ext_evt

class CeuSemanticHighlightingCalculator implements ISemanticHighlightingCalculator {
	
	override provideHighlightingFor(XtextResource resource, IHighlightedPositionAcceptor acceptor, CancelIndicator indicator) {
		if (resource == null || resource.parseResult == null) {
			return
		}
		
		val INode root = resource.parseResult.rootNode
		for (node : root.asTreeIterable) {
			println('''
			||||||||| «node.text» |||||||||
			> offset: «node.offset»
			> length: «node.length»
			> semnatic element: «node.semanticElement.eClass.name»
			
			> grammarElement: «node.grammarElement»
			> grammarElement interfaces: «node.grammarElement.class.interfaces»
			> «node»
			||||||
			''')
//			if (node.semanticElement.eClass.name == "Dcl_ext1") {
//				println('''
//				>>>>>>>>>>>>>>>>>>>>>>> instance of! <<<<<<<<<<<<<<<<<<<<<<<
//				''')
//				for (element : node.asTreeIterable) {
//					println('''
//					++ «element.semanticElement.eClass.name»
//					-- «element.semanticElement»
//					** «element.length»
//					
//					text: «element.text»
//					''')
//				}
//				println('-------------------------')
//				acceptor.addPosition(node.offset, node.length, HighlightingConfiguration.EVENT_ID)
//			}
			if (node.grammarElement instanceof Dcl_ext_evt) {
				acceptor.addPosition(node.offset, node.length, HighlightingConfiguration.EVENT_ID)
			}
		}
	}
	
}
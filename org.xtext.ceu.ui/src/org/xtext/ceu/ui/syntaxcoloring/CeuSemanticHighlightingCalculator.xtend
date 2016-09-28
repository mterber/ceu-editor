package org.xtext.ceu.ui.syntaxcoloring

import org.eclipse.xtext.ide.editor.syntaxcoloring.IHighlightedPositionAcceptor
import org.eclipse.xtext.ide.editor.syntaxcoloring.ISemanticHighlightingCalculator
import org.eclipse.xtext.nodemodel.INode
import org.eclipse.xtext.resource.XtextResource
import org.eclipse.xtext.util.CancelIndicator

class CeuSemanticHighlightingCalculator implements ISemanticHighlightingCalculator {
	
	override provideHighlightingFor(XtextResource resource, IHighlightedPositionAcceptor acceptor, CancelIndicator indicator) {
		if (resource == null || resource.parseResult == null) {
			return
		}
		
		val INode root = resource.parseResult.rootNode
		for (node : root.asTreeIterable) {
						
			if (node.semanticElement.eClass.name == "Dcl_ext1") {
//				println('''
//				>>>>>>>>>>>>>>>>>>>>>>> instance of! <<<<<<<<<<<<<<<<<<<<<<<
//				''')
//				for (element : node.asTreeIterable) {
//					println('''
//					++ �element.semanticElement.eClass.name�
//					-- �element.semanticElement�
//					** �element.length�
//					
//					text: �element.text�
//					''')
//				}
//				println('-------------------------')
//				acceptor.addPosition(node.leafNodes.get(0).offset, node.leafNodes.get(0).length, HighlightingConfiguration.EVENT_ID)
				for (leaf : node.leafNodes) {
					if (leaf.grammarElement.eClass.name == "RuleCall") {
						acceptor.addPosition(leaf.offset, leaf.length, HighlightingConfiguration.EVENT_ID)
					}
				}
			}
			if (node.semanticElement.eClass.name == "Dcl_var") {
				for (leaf : node.leafNodes) {
					if (leaf.grammarElement.eClass.name == "RuleCall") {
						acceptor.addPosition(leaf.offset, leaf.length, HighlightingConfiguration.VAR_ID)
					}
				}
			}
		}
	}
	
}
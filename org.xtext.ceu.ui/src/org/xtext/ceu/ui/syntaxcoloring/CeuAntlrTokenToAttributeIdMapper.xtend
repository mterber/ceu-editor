package org.xtext.ceu.ui.syntaxcoloring

import org.eclipse.xtext.ide.editor.syntaxcoloring.AbstractAntlrTokenToAttributeIdMapper

class CeuAntlrTokenToAttributeIdMapper extends AbstractAntlrTokenToAttributeIdMapper {
	
	override protected calculateId(String tokenName, int tokenType) {
		if ("RULE_ID_VAR".equals(tokenName)) {
			
		}
	}
	
}
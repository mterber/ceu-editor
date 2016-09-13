package org.xtext.ceu.ui.syntaxcoloring

import org.eclipse.xtext.ui.editor.syntaxcoloring.DefaultAntlrTokenToAttributeIdMapper

class CeuAntlrTokenToAttributeIdMapper extends DefaultAntlrTokenToAttributeIdMapper {
	
	override protected calculateId(String tokenName, int tokenType) {
//		if ("RULE_ID_VAR_TERMINAL".equals(tokenName)) {
//			println('''
//			>--------------------------<
//			
//			RULE_DCL_INT
//			------------
//			>> tokenName: «tokenName»
//			>> tokenType: «tokenType»
//			
//			>--------------------------<
//			''')
//			return HighlightingConfiguration.EVENT_ID
//		}
		if ("RULE_PREPROCESSOR_DEFINE_TYPE".equals(tokenName)
			|| "PREPROCESSOR_INCLUDE_TYPE".equals(tokenName)
			|| "PREPROCESSOR_SINGLE_PARAM_TYPE".equals(tokenName)
		) {
			return HighlightingConfiguration.PREPROC_ID
		}
//		println('''
//			>--------------------------<
//			
//			General
//			-------
//			>> tokenName: «tokenName»
//			>> tokenType: «tokenType»
//			
//			>--------------------------<
//			''')
		super.calculateId(tokenName, tokenType)
	}
	
}
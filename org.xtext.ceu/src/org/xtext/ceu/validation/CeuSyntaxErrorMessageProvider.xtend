package org.xtext.ceu.validation

import javax.inject.Inject
import org.eclipse.xtext.GrammarUtil
import org.eclipse.xtext.IGrammarAccess
import org.eclipse.xtext.nodemodel.SyntaxErrorMessage
import org.eclipse.xtext.parser.antlr.SyntaxErrorMessageProvider

class CeuSyntaxErrorMessageProvider extends SyntaxErrorMessageProvider {
	
	@Inject IGrammarAccess grammarAccess	

	public static val INVALID_VAR_IDENTIFIER 			= "INVALID_VAR_IDENTIFIER"
	public static val INVALID_INT_IDENTIFIER 			= "INVALID_INT_IDENTIFIER"
	public static val INVALID_EXT_IDENTIFIER 			= "INVALID_EXT_IDENTIFIER"
	public static val INVALID_ROOT_IDENTIFIER 			= "INVALID_ROOT_IDENTIFIER"
	public static val IDENTIFIER_STARTS_NOT_WITH_LETTER = "IDENTIFIER_STARTS_NOT_WITH_LETTER"

	override getSyntaxErrorMessage(IParserErrorContext context) {
		val unexpectedText = context?.recognitionException?.token?.text
		if (!(GrammarUtil::getAllAlternatives(grammarAccess.getGrammar()).contains(unexpectedText))) {
			if (context.currentContext.eClass.name == "Dcl_var") {
				return new SyntaxErrorMessage(
					"Identifiers for variables have to start with a lower case!",
					INVALID_VAR_IDENTIFIER
				)
			}
			if (context.currentContext.eClass.name == "Dcl_int") {
				return new SyntaxErrorMessage(
					"Identifiers for intern events have to start with a lower case!",
					INVALID_INT_IDENTIFIER
				)
			}
			if (context.currentContext.eClass.name == "Dcl_ext_evt") {
				return new SyntaxErrorMessage(
					"Identifiers for extern events have to consist of capital letters only!",
					INVALID_EXT_IDENTIFIER
				)
			}
			if (context.currentContext.eClass.name == "Root") {
				return new SyntaxErrorMessage(
					"The identifier have to start with a capital!",
					INVALID_ROOT_IDENTIFIER
				)
			}
			if (!(Character.isLetter(unexpectedText.charAt(0))) || !(unexpectedText.startsWith("_"))) {
				return new SyntaxErrorMessage(
					"Identifier have to start with a letter or '_'!",
					IDENTIFIER_STARTS_NOT_WITH_LETTER
				)
			}
        }
		return super.getSyntaxErrorMessage(context)
	}
}
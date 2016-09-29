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
		println('''
		RecognitionException:
		recognition: 	«context.recognitionException.toString»
		''')
		if (context.currentNode.semanticElement.eClass.name == "Dcl_var") {
			var i = 0;
			println("Dcl_var")
			for (nodes : context.currentNode.parent.leafNodes) {
				println('''
				«i++»: «nodes.semanticElement.eClass.name»
				''')
			}
		}

//		if (context.currentNode.semanticElement.eClass.name == "Dcl_var" // ID_VAR_TERMINAL abfragen
//			&& context?.currentNode?.previousSibling?.semanticElement.eClass.name == "Type"
//		) {
//			if (!(Character.isLetter(unexpectedText.charAt(0))) && !(unexpectedText.startsWith("_"))) {
//				return new SyntaxErrorMessage(
//					"Identifier have to start with a letter or '_'!",
//					IDENTIFIER_STARTS_NOT_WITH_LETTER
//				)
//			}
//			return new SyntaxErrorMessage(
//				"Identifiers for variables have to start with a lower case!",
//				INVALID_VAR_IDENTIFIER
//			)
//		}
//		if (context.currentNode.semanticElement.eClass.name == "Dcl_int"
//			&& context?.currentNode?.previousSibling?.semanticElement.eClass.name == "Type"
//		) {
//			return new SyntaxErrorMessage(
//				"Identifiers for intern events have to start with a lower case!",
//				INVALID_INT_IDENTIFIER
//			)
//		}
//		if (context.currentNode.semanticElement.eClass.name == "Dcl_ext_evt"
//			&& context?.currentNode?.previousSibling?.semanticElement.eClass.name == "Type"
//		) {
//			return new SyntaxErrorMessage(
//				"Identifiers for extern events have to consist of capital letters only!",
//				INVALID_EXT_IDENTIFIER
//			)
//		}
//		if (context.currentNode.semanticElement.eClass.name == "Root") {
//			return new SyntaxErrorMessage(
//				"The identifier have to start with a capital!",
//				INVALID_ROOT_IDENTIFIER
//			)
//		}
//		return super.getSyntaxErrorMessage(context)
		return new SyntaxErrorMessage("syntax error", "SYNTAX_ERROR")
	}
}
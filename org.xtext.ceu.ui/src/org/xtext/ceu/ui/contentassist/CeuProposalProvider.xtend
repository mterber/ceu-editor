/*
 * generated by Xtext 2.9.1
 */
package org.xtext.ceu.ui.contentassist

import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.Assignment
import org.eclipse.xtext.Keyword
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext
import org.eclipse.xtext.ui.editor.contentassist.ICompletionProposalAcceptor
import org.xtext.ceu.ceu.Dcl_cls
import org.xtext.ceu.ceu.Dcl_adt
import org.xtext.ceu.ceu.Dcl_ext0
import org.xtext.ceu.ceu.Dcl_int
import org.eclipse.xtext.RuleCall

/**
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#content-assist
 * on how to customize the content assistant.
 */
class CeuProposalProvider extends AbstractCeuProposalProvider {
	override completeKeyword(Keyword keyword, ContentAssistContext contentAssistContext, ICompletionProposalAcceptor acceptor) {
		val FILTERED_KEYWORDS = newHashSet(
			"&", "&&", "+", "-", "$", "$$", "(", "*", "[", "[[", "?", "!", "]]", "()", "or", "and",
			"!=", "==", "<=", ">=", "<", ">", "|", "^", "<<", ">>", "/", "%", ")", "{", "}", "~"
		)
		if(FILTERED_KEYWORDS.contains(keyword.value)) {
			return
		}
		super.completeKeyword(keyword, contentAssistContext, acceptor)
	}
	
	override complete_STRING(EObject model, RuleCall ruleCall, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		return
	}
	
	override complete_INT(EObject model, RuleCall ruleCall, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
		return
	}
	
//	override completeType_Type_cls_adt(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
//		super.completeType_Type_cls_adt(model, assignment, context, acceptor)
//		for (element : context.resource.allContents.filter(Dcl_cls).toIterable) {
//			acceptor.accept(createCompletionProposal(element.name, context))
//		}
//		for (element : context.resource.allContents.filter(Dcl_adt).toIterable) {
//			acceptor.accept(createCompletionProposal(element.name, context))
//		}
//	}
//	
//	override completeAwaits_Name(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
//		super.completeAwaits_Name(model, assignment, context, acceptor)
//		for (element : context.resource.allContents.filter(Dcl_ext0).toIterable) {
//			for (name : element.name) {
//				acceptor.accept(createCompletionProposal(name, context))
//			}
//		}
//		for (element : context.resource.allContents.filter(Dcl_int).toIterable) {
//			for (name : element.name) {
//				acceptor.accept(createCompletionProposal(name, context))
//			}
//		}
//	}
//	
//	override completeEmit_Name(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
//		super.completeEmit_Name(model, assignment, context, acceptor)
//		for (element : context.resource.allContents.filter(Dcl_ext0).toIterable) {
//			for (name : element.name) {
//				acceptor.accept(createCompletionProposal(name, context))
//			}
//		}
//		for (element : context.resource.allContents.filter(Dcl_int).toIterable) {
//			for (name : element.name) {
//				acceptor.accept(createCompletionProposal(name, context))
//			}
//		}
//	}
//	
//	override completeEmit_Exp(EObject model, Assignment assignment, ContentAssistContext context, ICompletionProposalAcceptor acceptor) {
//		super.completeEmit_Exp(model, assignment, context, acceptor)
//		for (element : context.resource.allContents.filter(Dcl_ext0).toIterable) {
//			for (name : element.name) {
//				acceptor.accept(createCompletionProposal(name, context))
//			}
//		}
//		for (element : context.resource.allContents.filter(Dcl_int).toIterable) {
//			for (name : element.name) {
//				acceptor.accept(createCompletionProposal(name, context))
//			}
//		}
//	}
	
	
}

/*
 * generated by Xtext 2.9.1
 */
package org.xtext.ceu.ui.outline

import org.eclipse.xtext.ui.editor.outline.impl.DefaultOutlineTreeProvider
import org.eclipse.xtext.ui.editor.outline.impl.DocumentRootNode
import org.xtext.ceu.ceu.Root
import org.eclipse.xtext.ui.editor.outline.IOutlineNode
import org.xtext.ceu.ceu.Nothing
import org.xtext.ceu.ceu.Set
import org.xtext.ceu.ceu.Await
import org.xtext.ceu.ceu.Emit
import org.xtext.ceu.ceu.Kill
import org.xtext.ceu.ceu.RawStmt
import org.xtext.ceu.ceu.CallStmt
import org.xtext.ceu.ceu.Host_c
import org.xtext.ceu.ceu.Do
import org.xtext.ceu.ceu.If
import org.xtext.ceu.ceu.Loop
import org.xtext.ceu.ceu.Every
import org.xtext.ceu.ceu.Traverse
import org.xtext.ceu.ceu.Spawn
import org.xtext.ceu.ceu.Finalize
import org.xtext.ceu.ceu.ParOr
import org.xtext.ceu.ceu.ParAnd
import org.xtext.ceu.ceu.ParEver
import org.xtext.ceu.ceu.Pause
import org.xtext.ceu.ceu.Async
import org.xtext.ceu.ceu.Isr
import org.xtext.ceu.ceu.Atomic
import org.xtext.ceu.ceu.DoPre
import org.xtext.ceu.ceu.PreProc
import org.xtext.ceu.ceu.Escape
import org.xtext.ceu.ceu.Return
import org.xtext.ceu.ceu.Break
import org.xtext.ceu.ceu.Continue
import org.xtext.ceu.ceu.Block
import org.xtext.ceu.ceu.Sets
import org.xtext.ceu.ceu.Dcl_cls
import org.xtext.ceu.ceu.Dcl_var
import org.xtext.ceu.ceu.BlockI
import org.xtext.ceu.ceu.Dcl_pool
import org.xtext.ceu.ceu.Dcl_imp
import org.xtext.ceu.ceu.Dcl_int
import org.xtext.ceu.ceu.Dcl_fun

/**
 * Customization of the default outline structure.
 *
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#outline
 */
class CeuOutlineTreeProvider extends DefaultOutlineTreeProvider {
	def dispatch void createChildren(DocumentRootNode parentNode, Root r) {
		for(statement : r.stmt) {
			createNode(parentNode, statement)
		}
	}
	def dispatch void createChildren(DocumentRootNode parentNode, Block b) {
		for(statement : b.stmt) {
			createNode(parentNode, statement)
		}
	}
	def dispatch void createChildren(DocumentRootNode parentNode, BlockI b) {
		for(element : b.dcl_fun) {
			createNode(parentNode, element)
		}
		for(element : b.dcl_imp) {
			createNode(parentNode, element)
		}
		for(element : b.dcl_int) {
			createNode(parentNode, element)
		}
		for(element : b.dcl_pool) {
			createNode(parentNode, element)
		}
		for(element : b.dcl_var) {
			createNode(parentNode, element)
		}
	}
	def dispatch boolean isLeaf(ParOr p) {
		return true;
	}
	def dispatch boolean isLeaf(ParAnd p) {
		return true;
	}	
	def dispatch boolean isLeaf(ParEver p) {
		return true;
	}
	def dispatch void createChildren(DocumentRootNode parentNode, Dcl_cls c) {
		createNode(parentNode, c.blockI)
	}
	def dispatch boolean isLeaf(Dcl_var v) {
		return true;
	}
	def dispatch boolean isLeaf(Dcl_pool p) {
		return true;
	}
	def dispatch boolean isLeaf(Dcl_imp i) {
		return true;
	}
	def dispatch boolean isLeaf(Dcl_int i) {
		return true;
	}
	def dispatch boolean isLeaf(Dcl_fun v) {
		return true;
	}
//	def dispatch void createChildren(DocumentRootNode parentNode, ParOr p) {}
//	def dispatch void createChildren(DocumentRootNode parentNode, ParAnd p) {}
//	def dispatch void createChildren(DocumentRootNode parentNode, ParEver p) {}
//	/*		StmtS		*/
//	def dispatch void createNode(IOutlineNode parentNode, Nothing n) {}
//	def dispatch void createNode(IOutlineNode parentNode, Set s) {}
//	def dispatch void createNode(IOutlineNode parentNode, Sets s) {}
//	def dispatch void createNode(IOutlineNode parentNode, Await a) {}
//	def dispatch void createNode(IOutlineNode parentNode, Emit e) {}
//	def dispatch void createNode(IOutlineNode parentNode, Kill k) {}
//	def dispatch void createNode(IOutlineNode parentNode, RawStmt r) {}
//	def dispatch void createNode(IOutlineNode parentNode, CallStmt c) {}
//	/*		StmtB		*/
//	def dispatch void createNode(IOutlineNode parentNode, Host_c h) {}
//	def dispatch void createNode(IOutlineNode parentNode, Do d) {}
//	def dispatch void createNode(IOutlineNode parentNode, If i) {}
//	def dispatch void createNode(IOutlineNode parentNode, Loop l) {}
//	def dispatch void createNode(IOutlineNode parentNode, Every e) {}
//	def dispatch void createNode(IOutlineNode parentNode, Traverse t) {}
//	def dispatch void createNode(IOutlineNode parentNode, Spawn s) {}
//	def dispatch void createNode(IOutlineNode parentNode, Finalize f) {}
//	def dispatch void createNode(IOutlineNode parentNode, ParOr p) {}
//	def dispatch void createNode(IOutlineNode parentNode, ParAnd p) {}
//	def dispatch void createNode(IOutlineNode parentNode, Pause p) {}
//	def dispatch void createNode(IOutlineNode parentNode, Async a) {}
//	def dispatch void createNode(IOutlineNode parentNode, org.xtext.ceu.ceu.Thread t) {}
//	def dispatch void createNode(IOutlineNode parentNode, Isr i) {}
//	def dispatch void createNode(IOutlineNode parentNode, Atomic a) {}
//	def dispatch void createNode(IOutlineNode parentNode, DoPre d) {}
//	def dispatch void createNode(IOutlineNode parentNode, PreProc p) {}
//	/*		LstStmtB		*/
//	def dispatch void createNode(IOutlineNode parentNode, ParEver p) {}
//	/*		LstStmt			*/
//	def dispatch void createNode(IOutlineNode parentNode, Escape e) {}
//	def dispatch void createNode(IOutlineNode parentNode, Return r) {}
//	def dispatch void createNode(IOutlineNode parentNode, Break b) {}
//	def dispatch void createNode(IOutlineNode parentNode, Continue c) {}
}

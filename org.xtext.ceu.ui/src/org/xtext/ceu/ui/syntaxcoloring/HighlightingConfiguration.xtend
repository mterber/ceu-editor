package org.xtext.ceu.ui.syntaxcoloring

import org.eclipse.xtext.ui.editor.syntaxcoloring.DefaultHighlightingConfiguration
import org.eclipse.xtext.ui.editor.syntaxcoloring.IHighlightingConfigurationAcceptor
import org.eclipse.swt.graphics.RGB
import org.eclipse.swt.SWT

class HighlightingConfiguration extends DefaultHighlightingConfiguration {
	
	val public static final EVENT_ID 	= "Event"
	val public static final PREPROC_ID 	= "Preprocessor"
	val public static final VAR_ID		= "Variables"
	
	override configure(IHighlightingConfigurationAcceptor acceptor) {
		super.configure(acceptor)
		
		acceptor.acceptDefaultHighlighting(EVENT_ID, 	"Events", 		eventTextStyle())
		acceptor.acceptDefaultHighlighting(PREPROC_ID, 	"Preprocessor", preProcTextStyle)
		acceptor.acceptDefaultHighlighting(VAR_ID, 		"Variables", 	VarTextStyle)
	}
	
	def preProcTextStyle() {
		var textStyle = defaultTextStyle.copy
		textStyle.color = (new RGB(255, 155, 155))
		textStyle.style = SWT.BOLD
		return textStyle
	}
	
	def eventTextStyle() {
		var textStyle = defaultTextStyle.copy
		textStyle.color = (new RGB(100, 125, 50))
		textStyle.style = SWT.ITALIC
		return textStyle
	}
	def VarTextStyle() {
		var textStyle = defaultTextStyle.copy
		textStyle.color = (new RGB(50, 50, 250))
		return textStyle
	}
	
}
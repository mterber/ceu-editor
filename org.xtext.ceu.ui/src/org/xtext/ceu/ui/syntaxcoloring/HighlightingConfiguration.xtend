package org.xtext.ceu.ui.syntaxcoloring

import org.eclipse.xtext.ui.editor.syntaxcoloring.DefaultHighlightingConfiguration
import org.eclipse.xtext.ui.editor.syntaxcoloring.IHighlightingConfigurationAcceptor
import org.eclipse.swt.graphics.RGB
import org.eclipse.swt.SWT

class HighlightingConfiguration extends DefaultHighlightingConfiguration {
	
	val public static final EVENT_ID = "event"
	val public static final PREPROC_ID = "Preprocessor"
	
	override configure(IHighlightingConfigurationAcceptor acceptor) {
		super.configure(acceptor)
		
		acceptor.acceptDefaultHighlighting(EVENT_ID, "Event", eventTextStyle())
		acceptor.acceptDefaultHighlighting(PREPROC_ID, "Preprocessor", preProcTextStyle)
	}
	
	def preProcTextStyle() {
		var textStyle = defaultTextStyle.copy
		textStyle.color = (new RGB(255, 155, 100))
		textStyle.style = SWT.ITALIC
		return textStyle
	}
	
	def eventTextStyle() {
		var textStyle = defaultTextStyle.copy
		textStyle.color = (new RGB(100, 125, 50))
		textStyle.style = SWT.ITALIC
		textStyle.backgroundColor = (new RGB(0,0,0))
		return textStyle
	}
	
}
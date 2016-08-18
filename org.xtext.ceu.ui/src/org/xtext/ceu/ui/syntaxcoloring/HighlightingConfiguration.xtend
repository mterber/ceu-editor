package org.xtext.ceu.ui.syntaxcoloring

import org.eclipse.xtext.ui.editor.syntaxcoloring.DefaultHighlightingConfiguration
import org.eclipse.xtext.ui.editor.syntaxcoloring.IHighlightingConfigurationAcceptor
import org.eclipse.swt.graphics.RGB
import org.eclipse.swt.SWT

class HighlightingConfiguration extends DefaultHighlightingConfiguration {
	
	val EVENT_ID = "event"
	
	override configure(IHighlightingConfigurationAcceptor acceptor) {
		super.configure(acceptor)
		
		acceptor.acceptDefaultHighlighting(EVENT_ID, "Event", eventTextStyle())
	}
	
	def eventTextStyle() {
		var textStyle = defaultTextStyle.copy
		textStyle.color = (new RGB(100, 125, 50))
		textStyle.style = SWT.ITALIC
		return textStyle
	}
	
}
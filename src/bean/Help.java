package bean;

import java.sql.Timestamp;

/**
 * Help entity. @author MyEclipse Persistence Tools
 */

public class Help implements java.io.Serializable {

	// Fields

	private Integer helpId;
	private String helpTitle;
	private String helpKeyWord;
	private Timestamp helpDate;
	private String helpContext;

	// Constructors

	/** default constructor */
	public Help() {
	}

	/** minimal constructor */
	public Help(String helpTitle, String helpKeyWord, Timestamp helpDate) {
		this.helpTitle = helpTitle;
		this.helpKeyWord = helpKeyWord;
		this.helpDate = helpDate;
	}

	/** full constructor */
	public Help(String helpTitle, String helpKeyWord, Timestamp helpDate, String helpContext) {
		this.helpTitle = helpTitle;
		this.helpKeyWord = helpKeyWord;
		this.helpDate = helpDate;
		this.helpContext = helpContext;
	}

	// Property accessors

	public Integer getHelpId() {
		return this.helpId;
	}

	public void setHelpId(Integer helpId) {
		this.helpId = helpId;
	}

	public String getHelpTitle() {
		return this.helpTitle;
	}

	public void setHelpTitle(String helpTitle) {
		this.helpTitle = helpTitle;
	}

	public String getHelpKeyWord() {
		return this.helpKeyWord;
	}

	public void setHelpKeyWord(String helpKeyWord) {
		this.helpKeyWord = helpKeyWord;
	}

	public Timestamp getHelpDate() {
		return this.helpDate;
	}

	public void setHelpDate(Timestamp helpDate) {
		this.helpDate = helpDate;
	}

	public String getHelpContext() {
		return this.helpContext;
	}

	public void setHelpContext(String helpContext) {
		this.helpContext = helpContext;
	}

	@Override
	public String toString() {
		return "Help [helpId=" + helpId + ", helpTitle=" + helpTitle + ", helpKeyWord=" + helpKeyWord + ", helpDate=" + helpDate + ", helpContext="
				+ helpContext + "]";
	}

}
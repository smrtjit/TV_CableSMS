package com.dialnet.source.taglib;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PaginationTaglib2 extends SimpleTagSupport {
	private String uri;
	private int offsetSecond;
	private int countSecond;
	private int max = 10;
	private int steps = 10;
	private String previous = "Previous";
	private String next = "Next";

	private Writer getWriter() {
		JspWriter out = getJspContext().getOut();
		return out;
	}

	@Override
	public void doTag() throws JspException {
		Writer out = getWriter();

		try {
			out.write("<nav>");
			out.write("<ul class=\"pagination\">");
			
			if(offsetSecond<steps)
				out.write(constructLink(1, previous, "disabled", true));
			else
				out.write(constructLink(offsetSecond-steps, previous, null, false));
			
			for(int itr=0;itr<countSecond;itr+=steps) {
				if(offsetSecond==itr)
					out.write(constructLink((itr/10+1)-1 *steps, String.valueOf(itr/10+1), "active", true));
				else
					out.write(constructLink(itr/10*steps, String.valueOf(itr/10+1), null , false));
			}

			if(offsetSecond+steps>=countSecond)
				out.write(constructLink(offsetSecond+steps, next, "disabled", true));
			else
				out.write(constructLink(offsetSecond+steps, next, null , false));
			
			
			out.write("</ul>");
			out.write("</nav>");
		} catch (java.io.IOException ex) {
			throw new JspException("Error in Paginator tag", ex);
		}
	}


	private String constructLink(int page, String text, String className, boolean disabled) {
		StringBuilder link = new StringBuilder("<li");
		if (className != null) {
			link.append(" class=\"");
			link.append(className);
			link.append("\"");
		}
		if(disabled)
			link.append(">").append("<a href=\"#\">"+text+"</a></li>");
		else
			link.append(">").append("<a href=\""+uri+"&offset="+page + "\">"+text+"</a></li>");
		//System.out.println("Link in Taglib Class: "+link);
		return link.toString();
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

	public int getOffset() {
		return offsetSecond;
	}

	public void setOffset(int offset) {
		this.offsetSecond = offset;
	}

	public int getCount() {
		return countSecond;
	}

	public void setCount(int count) {
		this.countSecond = count;
	}

	public int getMax() {
		return max;
	}

	public void setMax(int max) {
		this.max = max;
	}

	public String getPrevious() {
		return previous;
	}

	public void setPrevious(String previous) {
		this.previous = previous;
	}

	public String getNext() {
		return next;
	}

	public void setNext(String next) {
		this.next = next;
	}

	public int getSteps() {
		return steps;
	}

	public void setSteps(int steps) {
		this.steps = steps;
	}

}

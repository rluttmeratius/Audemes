﻿<%@ Page Language="C#" %>

<html>
    <head>
        <!--#Include virtual="~\includes\header.html"--> 
        <title>Create Account</title>
        <% 
            Response.Write(styleManager.initializeStyles());  
        %>
    </head>    
    <body>
        <div id="container">  
	        <% Response.Write(styleManager.initializeTopNav()); %> 	
            <div id="content">
            	<div id="content_left">

                <div class="title">Create an Account</div>
                    <form class="form" name="form_createAccount" id="form_createAccount" action="/formHandlers/createAccount.aspx">
                        
                        <label for="username" class="text">Username*<br />(6-16 characters)</label>
                        <input id="username"  name="username" type="text" autofocus="true" required="required" maxlength="16" placeholder="Letters &amp; Numbers Only" /><br />

                        <label for="password" class="text">Password*<br />(6-16 characters)</label>
                        <input id="password"  name="password" type="password" required="required" maxlength="16" placeholder="Letters &amp; Numbers Only" /><br />

                        <label for="password2" class="text">Password*<br />(re-enter)</label>
                        <input id="password2"  name="password2" type="password" required="required" maxlength="16" placeholder="Letters &amp; Numbers Only" /><br />
                            
                        <!--<label for="styleSheet" class="text">Text Size*</label>
                        <input name="styleSheet" type="radio" value="smallText"/><span style="font-size: 11px;">Small (11px)</span>
                        <input name="styleSheet" type="radio" value="largeText"/>Large (24px) --> <!-- commented out because this style sheet change isn't working but we might be able to fix it later -->

        	            
                        <p id="error"> </p>
                            
                        <input type="submit" id="Submit" value="Create Account" /><br /><br />

                        <label>* required field</label>
                          
	                </form>         
                    
                            
                </div> <!-- end of content_left -->        
    	    <div id="bottom_bg"></div>
        </div> <!-- end of content -->
               
        <!--#Include virtual="~\includes\footer.html"--> 
    </div> <!-- end of container -->
        
    <script type="text/javascript">
        $("a:contains('Dictionary')").addClass('current'); //Makes the proper top nav item selected
        $("#error").html(getParameterByName("error")); //Fills in any errors
    </script>
    </body>
</html>    
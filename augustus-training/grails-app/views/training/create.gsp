

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Training</title>
	<script type="text/javascript" src="js/md_stylechanger.js"></script>         
    </head>
    <body>

<!-- ***** Start: Kopfbereich ********************************************// -->
<p class="unsichtbar">
  <a href="#inhalt" title="Directly to Contents">Directly to Contents</a>
</p>

<div id="navigation_oben">
  <a name="seitenanfang"></a>
  <table width="100%" border="0" cellpadding="0" cellspacing="1">
    <tr>
      <td nowrap="nowrap">
        <a href="http://www.uni-greifswald.de" target="_blank" class="mainleveltop_" >University of Greifswald</a><span class="mainleveltop_">&nbsp;|&nbsp; </span><a href="http://www.mnf.uni-greifswald.de/" target="_blank" class="mainleveltop_" >Faculty</a><span class="mainleveltop_">&nbsp;|&nbsp; </span><a href="http://www.math-inf.uni-greifswald.de/" target="_blank" class="mainleveltop_" >Institute</a><span class="mainleveltop_">&nbsp;|&nbsp;</span><a href="http://bioinf.uni-greifswald.de/" target="_blank" class="mainleveltop_">Bioinformatics Group</a>
      </td>
    </tr>
  </table>
</div>

<div id="banner">
   <div id="banner_links">
       <a href="http://www.math-inf.uni-greifswald.de/mathe/index.php" title="Institut f&uuml;r Mathematik und Inform\
atik"><img src="../images/header.gif" alt="Directly to home" /> </a>
   </div>
   <div id="banner_mitte">
      <div id="bannertitel1">
        Bioinformatics Web Server
      </div>
      <div id="bannertitel2">
        AUGUSTUS Training
      </div>
   </div>
   <div id="banner_rechts">
     <a href="http://www.math-inf.uni-greifswald.de/mathe/index.php/geschichte-und-kultur/167" title="Voderberg-Doppelspirale">
     <img src="../images/spirale.gif" align="left" />
     </a>
   </div>
</div>

<div id="wegweiser">
  Navigation for: &nbsp; &nbsp;<span class="breadcrumbs pathway">
    Submitt Training</span>

  <div class="beendeFluss"></div>
</div>
<!-- ***** Ende: Kopfbereich *********************************************// -->

<!-- ***** Start: Koerper ************************************************// -->
<div id="koerper">

  <div id="linke_spalte">
     <ul class="menu">
         <li><a href="../index.gsp"><span>Introduction</span></a></li>
         <li id="current"><g:link controller="training" action="create"><span>Submitt Training</span></g:link></li>
         <li><g:link controller="prediction" action="create"><span>Submitt Prediction</span></g:link></li>
         <li><g:link controller="help" action="list"><span>Help</span></g:link></li>
         <li><a href="../references.gsp"><span>Links & References</span></a></li>
         <li><a href="http://bioinf.uni-greifswald.de"><span>Bioinformatics Group</span></a></li>
         <li><a href="http://bioinf.uni-greifswald.de/bioinf/impressum.html"><span>Impressum</span></a></li>
     </ul>
  </div>

  <div id="mittel_spalte">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${trainingInstance}">
            <div class="errors">
                <g:renderErrors bean="${trainingInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:if test="${flash.error}">
                 <div class="errors">
                    &nbsp; <img src="../images/skin/exclamation.png"> &nbsp; ${flash.error}
                 </div>
            </g:if>
            <div class="main" id="main">
            <g:uploadForm action="commit" method="post" >
            <fieldset><legend>
		<table class="contentpaneopen">
		  <tr>
		    <td class="contentheading" width="100%">
		      
			<g:link controller="training" action="create">Data Input for Training AUGUSTUS</g:link>
		    </td>
		  </tr>
		</table>
	      </legend><p>
               <div class="dialog">
		    <p>You have to specify an <b>E-mail address</b>, a <b>species name</b>, and a <b>genome file</b>!</p>
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email_adress">E-mail</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'email_adress','errors')}">
                                    <input type="text" id="email_adress" name="email_adress" value="${fieldValue(bean:trainingInstance,field:'email_adress')}"/> &nbsp; <g:link controller="help" action="list" fragment="email"><small>Help</small></g:link>
                                </td> 
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="project_name">Species name</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'project_name','errors')}">
                                    <input type="text" maxlength="30" id="project_name" name="project_name" value="${fieldValue(bean:trainingInstance,field:'project_name')}"/> &nbsp; <g:link controller="help" action="list" fragment="species_name"><small>Help</small></g:link>
                                </td>
                            </tr>
                          </tbody> 
                      </table>
                      
                      <p>There are two options for sequence file transfer:<br>You may <b>either</b> upload data files from your computer <b>or</b> specify web links. &nbsp; <g:link controller="help" action="list" fragment="upload_link"><small>Help</small></g:link></p>
                     
                      <br>
                      <table>
                         <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="GenomeFile"><b>Genome file</b>&nbsp; <g:link controller="help" action="list" fragment="genome_file"><small>Help</small></g:link></label>
                                </td>
				<td valign="top">
				</td>
		    	    </tr>
			    <tr class="prop">
			        <td valitn="top">Upload a file:</td>
                                <td valitn="top">
                                    <input type="file" id="GenomeFile" name="GenomeFile"/>
                                </td>
			    </tr>
			    <tr class="prop">
                                <td>&nbsp;<b>or</b>&nbsp;</td><td></td>
		            </tr>
			    <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="genome_ftp_link">specify web link to genome file:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'genome_ftp_link','errors')}">
                                    <input type="text" id="genome_ftp_link" name="genome_ftp_link" value="${fieldValue(bean:trainingInstance,field:'genome_ftp_link')}"/> 
                                </td>
                            </tr> 
                          </tbody>
                        </table>
                        <br>
                        You need to specify <b>at least one</b> of the following files: <g:link controller="help" action="list" fragment="which_files"><small>Help</small></g:link><br><br>
                        <table>
                          <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="EstFile"><b>cDNA file</b> &nbsp; <g:link controller="help" action="list" fragment="cDNA"><small>Help</small></g:link></label>
                                </td>
                                <td valign="top">
                                </td>
			    </tr> 
			    <tr class="prop">
			      <td valign="top">Upload a file:</td>
			      <td valign="top">
				            <input type="file" id="EstFile" name="EstFile"/>
                              </td>
			    </tr>
			    <tr class="prop">
                              <td>&nbsp;<b>or</b>&nbsp;</td><td></td>
			    </tr>
			    <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="est_ftp_link">specify web link to cDNA file</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'est_ftp_link','errors')}">
                                    <input type="text" id="est_ftp_link" name="est_ftp_link" value="${fieldValue(bean:trainingInstance,field:'est_ftp_link')}"/>
                                </td>
                            </tr> 
			    <tr class="prop"><td><br></td><td></td></tr>
                            <tr class="prop">
                                <td valign="top" class="name">
				  <label for="ProteinFile"><b>Protein file</b> &nbsp; <g:link controller="help" action="list" fragment="protein"><small>Help</small></g:link></label>
                                </td>
                                <td valign="top">
                                                      </td>
		     	    </tr>
			    <tr class="prop">
			      <td valign="top">Upload a file:</td>
                                <td valign="top">
                                    <input type="file" id="ProteinFile" name="ProteinFile"/>
                                </td>
		            </tr> 
			    <tr class="prop">
                            <td>&nbsp;<b>or</b>&nbsp;</td><td></td>
			    </tr>
			    <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="protein_ftp_link">specify web link to protein file</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'protein_ftp_link','errors')}">
                                    <input type="text" id="protein_ftp_link" name="protein_ftp_link" value="${fieldValue(bean:trainingInstance,field:'protein_ftp_link')}"/>
                                </td>
                            </tr> 
			    <tr class="prop"><td><br></td><td></td></tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="struct_file"><b>Training gene structure file</b> &nbsp; <g:link controller="help" action="list" fragment="structure"><small>Help</small></g:link></label>
                                </td>
				<td valign="top"></td>
			    </tr>
			    <tr class="prop">
			        <td valign="top">Upload a file:</td>
                                <td valign="top">
                                    <input type="file" id="StructFile" name="StructFile"/> 
                                </td>
                            </tr> 
                        </tbody>
                    </table>
                    <br><br>
                </div>
                <div class="buttons">
                    <span class="button"><input class="commit" type="submit" value="Start Training" /></span>
                </div>
            </g:uploadForm>
            </div>
            <p>&nbsp;</p>           
        </div>
     <div id="rechte_spalte">
    <div class="linien_div">
      <h5 class="ueberschrift_spezial">CONTACT</h5>
      <strong>Institute for Mathematics und Computer Sciences</strong><br/>
      <strong>Bioinformatics Group</strong><br />
      Walther-Rathenau-Stra&szlig;e 47<br />
      17487 Greifswald<br />
      Germany<br />
      Tel.: +49 (0)3834 86 - 46 24<br/>
      Fax:  +49 (0)3834 86 - 46 40<br /><br />
      <a href="mailto:bioinformatik.greifswald@gmail.com" title="E-Mail bioinformatik.greifswald@gmail.com, opens the\
 standard mail program">bioinformatik.greifswald@gmail.com</a>
    </div>
    </div>

    <div class="beendeFluss"></div>
</div>
<!-- ***** Ende: Koerper *************************************************// -->

<!-- ***** Start: Fuss ***************************************************// -->
<div id="fuss">
  <div id="fuss_links"><p class="copyright">&copy; 2011 University of Greifswald</p></div>
  <div id="fuss_mitte">
  <div class="bannergroup">
 </div>
 </div>
 <div id="fuss_rechts" >
  <ul>
   <li>
    <a href="#seitenanfang">
     <img hspace="5" height="4" border="0" width="7" alt="Seitenanfang" src="../images/top.gif" />
     Top of page
    </a>
   </li>
  </ul>
 </div>
 <div class="beendeFluss"></div>
</div>
<!-- ***** Ende: Fuss ***************************************************// -->


    </body>
</html>
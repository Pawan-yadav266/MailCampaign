import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../model/madeEasyCampaign.dart';
import '../provider/OffsetProvider.dart';


class AddCampaign extends StatefulWidget {
   AddCampaign({Key? key}) : super(key: key);

  @override
  State<AddCampaign> createState() => _AddCampaignState();
}

class _AddCampaignState extends State<AddCampaign> {
   bool added = false;
   String error = "";

   Future setContent(String id) async {
     final response = await http.put(
         Uri.parse(
             'https://us13.api.mailchimp.com/3.0/campaigns/${id}/content'),
         headers: <String, String>{
           'Authorization': 'auth key',
         },
         body: jsonEncode(<String, dynamic>{
           'html': '''<!doctype html>
        <html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
        <head>
        <!--[if gte mso 15]>
        <xml>
        <o:OfficeDocumentSettings>
        <o:AllowPNG/>
        <o:PixelsPerInch>96</o:PixelsPerInch>
        </o:OfficeDocumentSettings>
        </xml>
        <![endif]-->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>|MC:SUBJECT|</title>

      <style type="text/css">
      p{
      margin:10px 0;
      padding:0;
      }
      table{
      border-collapse:collapse;
      }
      h1,h2,h3,h4,h5,h6{
      display:block;
      margin:0;
      padding:0;
      }
      img,a img{
      border:0;
      height:auto;
      outline:none;
      text-decoration:none;
      }
      body,#bodyTable,#bodyCell{
      height:100%;
      margin:0;
      padding:0;
      width:100%;
      }
          .mcnPreviewText{
      display:none !important;
      }
      #outlook a{
      padding:0;
      }
      img{
      -ms-interpolation-mode:bicubic;
      }
      table{
      mso-table-lspace:0pt;
      mso-table-rspace:0pt;
      }
          .ReadMsgBody{
      width:100%;
      }
          .ExternalClass{
      width:100%;
      }
      p,a,li,td,blockquote{
      mso-line-height-rule:exactly;
      }
      a[href^=tel],a[href^=sms]{
      color:inherit;
      cursor:default;
      text-decoration:none;
      }
      p,a,li,td,body,table,blockquote{
      -ms-text-size-adjust:100%;
      -webkit-text-size-adjust:100%;
      }
          .ExternalClass,.ExternalClass p,.ExternalClass td,.ExternalClass div,.ExternalClass span,.ExternalClass font{
      line-height:100%;
      }
      a[x-apple-data-detectors]{
      color:inherit !important;
      text-decoration:none !important;
      font-size:inherit !important;
      font-family:inherit !important;
      font-weight:inherit !important;
      line-height:inherit !important;
      }
      #bodyCell{
      padding:10px;
      }
          .templateContainer{
      max-width:600px !important;
      }
      a.mcnButton{
      display:block;
      }
          .mcnImage,.mcnRetinaImage{
      vertical-align:bottom;
      }
          .mcnTextContent{
      word-break:break-word;
      }
          .mcnTextContent img{
      height:auto !important;
      }
          .mcnDividerBlock{
      table-layout:fixed !important;
      }
      body,#bodyTable{
      background-color:#FFFFFF;
      }
      #bodyCell{
      border-top:0;
      }
          .templateContainer{
      border:5px solid #FFFFFF;
      }
      h1{
      color:#B2B2B2;
      font-family:Helvetica;
      font-size:30px;
      font-style:normal;
      font-weight:bold;
      line-height:100%;
      letter-spacing:normal;
      text-align:left;
      }
      h2{
      color:#303030;
      font-family:Helvetica;
      font-size:22px;
      font-style:normal;
      font-weight:bold;
      line-height:125%;
      letter-spacing:normal;
      text-align:left;
      }
      h3{
      color:#303030;
      font-family:Helvetica;
      font-size:16px;
      font-style:normal;
      font-weight:bold;
      line-height:125%;
      letter-spacing:normal;
      text-align:left;
      }
      h4{
      color:#505050;
      font-family:Helvetica;
      font-size:14px;
      font-style:normal;
      font-weight:bold;
      line-height:125%;
      letter-spacing:normal;
      text-align:left;
      }
      #templateUpperHeader{
      padding-top:30px;
      padding-right:15px;
      }
          .templateHeader{
      background-color:#EFEFEF;
      border-top:0;
      border-bottom:0;
      padding-bottom:10px;
      }
          .templateHeader .mcnTextContent,.templateHeader .mcnTextContent p{
      color:#202020;
      font-family:Helvetica;
      font-size:16px;
      line-height:150%;
      text-align:left;
      }
          .templateHeader .mcnTextContent a,.templateHeader .mcnTextContent p a{
      color:#2BAADF;
      font-weight:normal;
      text-decoration:underline;
      }
      #templateSidebar{
      border-top:0;
      border-bottom:0;
      padding-top:9px;
      padding-bottom:9px;
      }
      #calendarContainer{
      background-color:#FFFFFF;
      border:5px solid #FFFFFF;
      }
      #monthContainer{
      background-color:#EFEFEF;
      color:#303030;
      font-family:Helvetica;
      font-size:14px;
      font-weight:bold;
      line-height:150%;
      }
      #dayContainer{
      background-color:#FFFFFF;
      color:#303030;
      font-family:Helvetica;
      font-size:72px;
      font-weight:bold;
      line-height:100%;
      }
      #templateSidebar .mcnTextContent,#templateSidebar .mcnTextContent p{
      color:#505050;
      font-family:Helvetica;
      font-size:12px;
      line-height:150%;
      text-align:left;
      }
      #templateSidebar .mcnTextContent a,#templateSidebar .mcnTextContent p a{
      color:#6ACC3B;
      font-weight:normal;
      text-decoration:underline;
      }
      #templateBody,#templateColumns{
      background-color:#EFEFEF;
      border-top:0;
      border-bottom:0;
      padding-top:0;
      padding-bottom:9px;
      }
      #templateBody .mcnTextContent,#templateBody .mcnTextContent p{
      color:#505050;
      font-family:Helvetica;
      font-size:16px;
      line-height:150%;
      text-align:left;
      }
      #templateBody .mcnTextContent a,#templateBody .mcnTextContent p a{
      color:#6ACC3B;
      font-weight:normal;
      text-decoration:underline;
      }
      #templateLowerBody{
      background-color:#EFEFEF;
      border-top:0;
      border-bottom:0;
      padding-top:0;
      padding-bottom:0;
      }
      #templateLowerBody .mcnTextContent,#templateLowerBody .mcnTextContent p{
      color:#505050;
      font-family:Helvetica;
      font-size:16px;
      line-height:150%;
      text-align:left;
      }
      #templateLowerBody .mcnTextContent a,#templateLowerBody .mcnTextContent p a{
      color:#6ACC3B;
      font-weight:normal;
      text-decoration:underline;
      }
      #templateFooter{
      background-color:#EFEFEF;
      border-top:5px solid #FFFFFF;
      border-bottom:0;
      padding-top:9px;
      padding-bottom:9px;
      }
      #templateFooter .mcnTextContent,#templateFooter .mcnTextContent p{
      color:#505050;
      font-family:Helvetica;
      font-size:12px;
      line-height:150%;
      text-align:center;
      }
      #templateFooter .mcnTextContent a,#templateFooter .mcnTextContent p a{
      color:#6ACC3B;
      font-weight:normal;
      text-decoration:underline;
      }
      @media only screen and (min-width:768px){
          .templateContainer{
      width:600px !important;
      }

      }	@media only screen and (max-width: 480px){
      body,table,td,p,a,li,blockquote{
      -webkit-text-size-adjust:none !important;
      }

      }	@media only screen and (max-width: 480px){
      body{
      width:100% !important;
      min-width:100% !important;
      }

      }	@media only screen and (max-width: 480px){
      #bodyCell{
      padding-top:10px !important;
      }

      }	@media only screen and (max-width: 480px){
      #templateSidebar,#templateBody{
      max-width:100% !important;
      width:100% !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnRetinaImage{
      max-width:100% !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnImage{
      width:100% !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnCartContainer,.mcnCaptionTopContent,.mcnRecContentContainer,.mcnCaptionBottomContent,.mcnTextContentContainer,.mcnBoxedTextContentContainer,.mcnImageGroupContentContainer,.mcnCaptionLeftTextContentContainer,.mcnCaptionRightTextContentContainer,.mcnCaptionLeftImageContentContainer,.mcnCaptionRightImageContentContainer,.mcnImageCardLeftTextContentContainer,.mcnImageCardRightTextContentContainer,.mcnImageCardLeftImageContentContainer,.mcnImageCardRightImageContentContainer{
      max-width:100% !important;
      width:100% !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnBoxedTextContentContainer{
      min-width:100% !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnImageGroupContent{
      padding:9px !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnCaptionLeftContentOuter .mcnTextContent,.mcnCaptionRightContentOuter .mcnTextContent{
      padding-top:9px !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnImageCardTopImageContent,.mcnCaptionBottomContent:last-child .mcnCaptionBottomImageContent,.mcnCaptionBlockInner .mcnCaptionTopContent:last-child .mcnTextContent{
      padding-top:18px !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnImageCardBottomImageContent{
      padding-bottom:9px !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnImageGroupBlockInner{
      padding-top:0 !important;
      padding-bottom:0 !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnImageGroupBlockOuter{
      padding-top:9px !important;
      padding-bottom:9px !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnTextContent,.mcnBoxedTextContentColumn{
      padding-right:18px !important;
      padding-left:18px !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnImageCardLeftImageContent,.mcnImageCardRightImageContent{
      padding-right:18px !important;
      padding-bottom:0 !important;
      padding-left:18px !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcpreview-image-uploader{
      display:none !important;
      width:100% !important;
      }

      }	@media only screen and (max-width: 480px){
      h1{
      font-size:22px !important;
      line-height:125% !important;
      }

      }	@media only screen and (max-width: 480px){
      h2{
      font-size:20px !important;
      line-height:125% !important;
      }

      }	@media only screen and (max-width: 480px){
      h3{
      font-size:18px !important;
      line-height:125% !important;
      }

      }	@media only screen and (max-width: 480px){
      h4{
      font-size:16px !important;
      line-height:150% !important;
      }

      }	@media only screen and (max-width: 480px){
          .mcnBoxedTextContentContainer .mcnTextContent,.mcnBoxedTextContentContainer .mcnTextContent p{
      font-size:14px !important;
      line-height:150% !important;
      }

      }	@media only screen and (max-width: 480px){
          .templateHeader .mcnTextContent,.templateHeader .mcnTextContent p{
      font-size:16px !important;
      line-height:150% !important;
      }

      }	@media only screen and (max-width: 480px){
      #templateSidebar .mcnTextContent,#templateSidebar .mcnTextContent p{
      font-size:16px !important;
      line-height:150% !important;
      }

      }	@media only screen and (max-width: 480px){
      #templateBody .mcnTextContent,#templateBody .mcnTextContent p{
      font-size:16px !important;
      line-height:150% !important;
      }

      }	@media only screen and (max-width: 480px){
      #templateLowerBody .mcnTextContent,#templateLowerBody .mcnTextContent p{
      font-size:16px !important;
      line-height:150% !important;
      }

      }	@media only screen and (max-width: 480px){
      #templateFooter .mcnTextContent,#templateFooter .mcnTextContent p{
      font-size:14px !important;
      line-height:150% !important;
      }

      }</style></head>
      <body style="height: 100%;margin: 0;padding: 0;width: 100%;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;">
      <!--|IF:MC_PREVIEW_TEXT|-->
      <!--[if !gte mso 9]><!----><span class="mcnPreviewText" style="display:none; font-size:0px; line-height:0px; max-height:0px; max-width:0px; opacity:0; overflow:hidden; visibility:hidden; mso-hide:all;">|MC_PREVIEW_TEXT|</span><!--<![endif]-->
      <!--|END:IF|-->
      <center>
      <table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="bodyTable" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;height: 100%;margin: 0;padding: 0;width: 100%;background-color: #FFFFFF;">
      <tr>
      <td align="center" valign="top" id="bodyCell" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;height: 100%;margin: 0;padding: 10px;width: 100%;border-top: 0;">
      <!-- BEGIN TEMPLATE // -->
      <!--[if gte mso 9]>
      <table align="center" border="0" cellspacing="0" cellpadding="0" width="600" style="width:600px;">
      <tr>
      <td align="center" valign="top" width="600" style="width:600px;">
      <![endif]-->
      <table border="0" cellpadding="0" cellspacing="0" width="100%" class="templateContainer" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border: 5px solid #FFFFFF;max-width: 600px !important;">
      <tr>
      <td valign="top" id="templateUpperHeader" class="templateHeader" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EFEFEF;border-top: 0;border-bottom: 0;padding-bottom: 10px;padding-top: 30px;padding-right: 15px;">
      <table align="left" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tr>
      <td align="left" valign="middle" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <img src="https://cdn-images.mailchimp.com/template_images/gallery/47662b23-df38-45d4-8005-9b2f50193f4b.png" height="30" width="15" style="boder: 0;display: block;border: 0;height: auto;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;">
      </td>
      <td align="left" valign="middle" width="100%" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody class="mcnTextBlockOuter">
      <tr>
      <td valign="top" class="mcnTextBlockInner" style="padding-top: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <!--[if mso]>
      <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
      <tr>
      <![endif]-->

      <!--[if mso]>
      <td valign="top" width="560" style="width:560px;">
      <![endif]-->
      <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" width="100%" class="mcnTextContentContainer">
      <tbody><tr>

      <td valign="top" class="mcnTextContent" style="padding-top: 0;padding-right: 18px;padding-bottom: 9px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #202020;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;">

      <h1 style="display: block;margin: 0;padding: 0;color: #B2B2B2;font-family: Helvetica;font-size: 30px;font-style: normal;font-weight: bold;line-height: 100%;letter-spacing: normal;text-align: left;">BANANACO BANANA SUMMIT</h1><h3 style="display: block;margin: 0;padding: 0;color: #303030;font-family: Helvetica;font-size: 16px;font-style: normal;font-weight: bold;line-height: 125%;letter-spacing: normal;text-align: left;">BANANACO WORLD HEADQUARTERS</h3>
      </td>
      </tr>
      </tbody></table>
      <!--[if mso]>
      </td>
      <![endif]-->

      <!--[if mso]>
      </tr>
      </table>
      <![endif]-->
      </td>
      </tr>
      </tbody>
      </table></td>
      </tr>
      </table>
      </td>
      </tr>
      <tr>
      <td valign="top" class="templateHeader" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EFEFEF;border-top: 0;border-bottom: 0;padding-bottom: 10px;">
      <table align="left" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tr>
      <td align="left" valign="middle" width="100%" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnImageBlock" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody class="mcnImageBlockOuter">
      <tr>
      <td valign="top" style="padding: 0px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" class="mcnImageBlockInner">
      <table align="left" width="100%" border="0" cellpadding="0" cellspacing="0" class="mcnImageContentContainer" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>
      <td class="mcnImageContent" valign="top" style="padding-right: 0px;padding-left: 0px;padding-top: 0;padding-bottom: 0;text-align: center;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">


      <img align="center" alt="" src="https://cdn-images.mailchimp.com/template_images/gallery/main_image.png" width="590" style="max-width: 600px;padding-bottom: 0;display: inline !important;vertical-align: bottom;border: 0;height: auto;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;" class="mcnImage">


      </td>
      </tr>
      </tbody></table>
      </td>
      </tr>
      </tbody>
      </table></td>
      </tr>
      </table>
      </td>
      </tr>
      <tr>
      <td valign="top" id="templateColumns" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EFEFEF;border-top: 0;border-bottom: 0;padding-top: 0;padding-bottom: 9px;">
      <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tr>
      <td valign="top" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <!--[if gte mso 9]>
      <table align="center" border="0" cellspacing="0" cellpadding="0" width="600" style="width:600px;">
      <tr>
      <td align="center" valign="top" width="400" style="width:400px;">
      <![endif]-->
      <table align="left" border="0" cellpadding="0" cellspacing="0" width="380" id="templateBody" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EFEFEF;border-top: 0;border-bottom: 0;padding-top: 0;padding-bottom: 9px;">
      <tr>
      <td style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody class="mcnTextBlockOuter">
      <tr>
      <td valign="top" class="mcnTextBlockInner" style="padding-top: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <!--[if mso]>
      <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
      <tr>
      <![endif]-->

      <!--[if mso]>
      <td valign="top" width="380" style="width:380px;">
      <![endif]-->
      <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" width="100%" class="mcnTextContentContainer">
      <tbody><tr>

      <td valign="top" class="mcnTextContent" style="padding-top: 0;padding-right: 18px;padding-bottom: 9px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #505050;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;">

      <p style="margin: 10px 0;padding: 0;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #505050;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;">The Bananaco Banana Summit provides banana fans and companies from around the world a unique opportunity to come together and discuss that thing we emailed you about.</p><p style="margin: 10px 0;padding: 0;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #505050;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;">Get ready for three days of words and stuff! Since our last event was such a success we'll be opening up an additional 120 seats to our workshop this year.</p>
      </td>
      </tr>
      </tbody></table>
      <!--[if mso]>
      </td>
      <![endif]-->

      <!--[if mso]>
      </tr>
      </table>
      <![endif]-->
      </td>
      </tr>
      </tbody>
      </table></td>
      </tr>
      </table>
      <!--[if gte mso 9]>
      </td>
      <td align="center"  valign="top" width="200" style="width:200px;">
      <![endif]-->
      <table align="left" border="0" cellpadding="0" cellspacing="0" width="186" id="templateSidebar" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border-top: 0;border-bottom: 0;padding-top: 9px;padding-bottom: 9px;">
      <tr>
      <td align="center" valign="top" style="padding-top: 9px;padding-bottom: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <table border="0" cellpadding="5" cellspacing="5" width="150" id="calendarContainer" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;border: 5px solid #FFFFFF;">
      <tr>
      <td align="center" bgcolor="#EFEFEF" valign="top" id="monthContainer" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EFEFEF;color: #303030;font-family: Helvetica;font-size: 14px;font-weight: bold;line-height: 150%;">
      <div>
      September 2016
      </div>
      </td>
      </tr>
      <tr>
      <td align="center" valign="top" id="dayContainer" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;color: #303030;font-family: Helvetica;font-size: 72px;font-weight: bold;line-height: 100%;">
      <div>
      27
      </div>
      </td>
      </tr>
      </table>
      </td>
      </tr>
      <tr>
      <td valign="top" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody class="mcnTextBlockOuter">
      <tr>
      <td valign="top" class="mcnTextBlockInner" style="padding-top: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <!--[if mso]>
      <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
      <tr>
      <![endif]-->

      <!--[if mso]>
      <td valign="top" width="186" style="width:186px;">
      <![endif]-->
      <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" width="100%" class="mcnTextContentContainer">
      <tbody><tr>

      <td valign="top" class="mcnTextContent" style="padding-top: 0;padding-right: 18px;padding-bottom: 9px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #505050;font-family: Helvetica;font-size: 12px;line-height: 150%;text-align: left;">

      Sign up today, this event will sell out!
      </td>
      </tr>
      </tbody></table>
      <!--[if mso]>
      </td>
      <![endif]-->

      <!--[if mso]>
      </tr>
      </table>
      <![endif]-->
      </td>
      </tr>
      </tbody>
      </table><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnButtonBlock" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody class="mcnButtonBlockOuter">
      <tr>
      <td style="padding-top: 0;padding-right: 18px;padding-bottom: 18px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" valign="top" align="center" class="mcnButtonBlockInner">
      <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnButtonContentContainer" style="border-collapse: separate !important;border: 5px solid #FFFFFF;background-color: #60CA2E;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody>
      <tr>
      <td align="center" valign="middle" class="mcnButtonContent" style="font-family: Helvetica;font-size: 14px;padding: 15px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <a class="mcnButton " title="REGISTER" href="http://" target="_self" style="font-weight: bold;letter-spacing: normal;line-height: 100%;text-align: center;text-decoration: none;color: #FFFFFF;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;display: block;">REGISTER</a>
      </td>
      </tr>
      </tbody>
      </table>
      </td>
      </tr>
      </tbody>
      </table></td>
      </tr>
      </table>
      <!--[if gte mso 9]>
      </td>
      </tr>
      </table>
      <![endif]-->
      </td>
      <td align="right" valign="top" style="padding-top: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <img src="https://cdn-images.mailchimp.com/template_images/gallery/03c9e5d8-4a2f-471e-b646-37327134c2b0.png" height="30" width="15" style="boder: 0;display: block;border: 0;height: auto;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;">
      </td>
      </tr>
      </table>
      </td>
      </tr>
      <tr>
      <td valign="top" id="templateLowerBody" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EFEFEF;border-top: 0;border-bottom: 0;padding-top: 0;padding-bottom: 0;">
      <table align="left" cellpadding="0" cellspacing="0" width="100%" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tr>
      <td align="left" valign="middle" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <img src="https://cdn-images.mailchimp.com/template_images/gallery/47662b23-df38-45d4-8005-9b2f50193f4b.png" height="30" width="15" style="boder: 0;display: block;border: 0;height: auto;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;">
      </td>
      <td align="left" valign="middle" width="100%" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowBlock" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody class="mcnFollowBlockOuter">
      <tr>
      <td align="center" valign="top" style="padding: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" class="mcnFollowBlockInner">
      <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentContainer" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>
      <td align="center" style="padding-left: 9px;padding-right: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <table border="0" cellpadding="0" cellspacing="0" width="100%" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" class="mcnFollowContent">
      <tbody><tr>
      <td align="center" valign="top" style="padding-top: 9px;padding-right: 9px;padding-left: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <table align="center" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>
      <td align="center" valign="top" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <!--[if mso]>
      <table align="center" border="0" cellspacing="0" cellpadding="0">
      <tr>
      <![endif]-->

      <!--[if mso]>
      <td align="center" valign="top">
      <![endif]-->


      <table align="left" border="0" cellpadding="0" cellspacing="0" style="display: inline;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>
      <td valign="top" style="padding-right: 10px;padding-bottom: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" class="mcnFollowContentItemContainer">
      <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentItem" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>
      <td align="left" valign="middle" style="padding-top: 5px;padding-right: 10px;padding-bottom: 5px;padding-left: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <table align="left" border="0" cellpadding="0" cellspacing="0" width="" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>

      <td align="center" valign="middle" width="24" class="mcnFollowIconContent" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <a href="http://www.facebook.com/" target="_blank" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><img src="https://cdn-images.mailchimp.com/icons/social-block-v2/light-facebook-48.png" alt="FRIEND ON FACEBOOK" style="display: block;border: 0;height: auto;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;" height="24" width="24" class=""></a>
      </td>


      <td align="left" valign="middle" class="mcnFollowTextContent" style="padding-left: 5px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <a href="http://www.facebook.com/" target="" style="font-family: Helvetica;font-size: 11px;text-decoration: none;color: #505050;font-weight: bold;text-align: center;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">FRIEND ON FACEBOOK</a>
      </td>

      </tr>
      </tbody></table>
      </td>
      </tr>
      </tbody></table>
      </td>
      </tr>
      </tbody></table>

      <!--[if mso]>
      </td>
      <![endif]-->

      <!--[if mso]>
      <td align="center" valign="top">
      <![endif]-->


      <table align="left" border="0" cellpadding="0" cellspacing="0" style="display: inline;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>
      <td valign="top" style="padding-right: 10px;padding-bottom: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" class="mcnFollowContentItemContainer">
      <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentItem" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>
      <td align="left" valign="middle" style="padding-top: 5px;padding-right: 10px;padding-bottom: 5px;padding-left: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <table align="left" border="0" cellpadding="0" cellspacing="0" width="" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>

      <td align="center" valign="middle" width="24" class="mcnFollowIconContent" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <a href="http://www.twitter.com/" target="_blank" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><img src="https://cdn-images.mailchimp.com/icons/social-block-v2/light-twitter-48.png" alt="FOLLOW ON TWITTER" style="display: block;border: 0;height: auto;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;" height="24" width="24" class=""></a>
      </td>


      <td align="left" valign="middle" class="mcnFollowTextContent" style="padding-left: 5px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <a href="http://www.twitter.com/" target="" style="font-family: Helvetica;font-size: 11px;text-decoration: none;color: #505050;font-weight: bold;text-align: center;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">FOLLOW ON TWITTER</a>
      </td>

      </tr>
      </tbody></table>
      </td>
      </tr>
      </tbody></table>
      </td>
      </tr>
      </tbody></table>

      <!--[if mso]>
      </td>
      <![endif]-->

      <!--[if mso]>
      <td align="center" valign="top">
      <![endif]-->


      <table align="left" border="0" cellpadding="0" cellspacing="0" style="display: inline;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>
      <td valign="top" style="padding-right: 0;padding-bottom: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" class="mcnFollowContentItemContainer">
      <table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnFollowContentItem" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>
      <td align="left" valign="middle" style="padding-top: 5px;padding-right: 10px;padding-bottom: 5px;padding-left: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <table align="left" border="0" cellpadding="0" cellspacing="0" width="" style="border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody><tr>

      <td align="center" valign="middle" width="24" class="mcnFollowIconContent" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <a href="http://mailchimp.com" target="_blank" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;"><img src="https://cdn-images.mailchimp.com/icons/social-block-v2/light-link-48.png" alt="VISIT OUR PAGE" style="display: block;border: 0;height: auto;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;" height="24" width="24" class=""></a>
      </td>


      <td align="left" valign="middle" class="mcnFollowTextContent" style="padding-left: 5px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <a href="http://mailchimp.com" target="" style="font-family: Helvetica;font-size: 11px;text-decoration: none;color: #505050;font-weight: bold;text-align: center;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">VISIT OUR PAGE</a>
      </td>

      </tr>
      </tbody></table>
      </td>
      </tr>
      </tbody></table>
      </td>
      </tr>
      </tbody></table>

      <!--[if mso]>
      </td>
      <![endif]-->

      <!--[if mso]>
      </tr>
      </table>
      <![endif]-->
      </td>
      </tr>
      </tbody></table>
      </td>
      </tr>
      </tbody></table>
      </td>
      </tr>
      </tbody></table>

      </td>
      </tr>
      </tbody>
      </table></td>
      </tr>
      </table>
      </td>
      </tr>
      <tr>
      <td valign="top" id="templateFooter" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #EFEFEF;border-top: 5px solid #FFFFFF;border-bottom: 0;padding-top: 9px;padding-bottom: 9px;"><table border="0" cellpadding="0" cellspacing="0" width="100%" class="mcnTextBlock" style="min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <tbody class="mcnTextBlockOuter">
      <tr>
      <td valign="top" class="mcnTextBlockInner" style="padding-top: 9px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;">
      <!--[if mso]>
      <table align="left" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:100%;">
      <tr>
      <![endif]-->

      <!--[if mso]>
      <td valign="top" width="595" style="width:595px;">
      <![endif]-->
      <table align="left" border="0" cellpadding="0" cellspacing="0" style="max-width: 100%;min-width: 100%;border-collapse: collapse;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;" width="100%" class="mcnTextContentContainer">
      <tbody><tr>

      <td valign="top" class="mcnTextContent" style="padding-top: 0;padding-right: 18px;padding-bottom: 9px;padding-left: 18px;mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;word-break: break-word;color: #505050;font-family: Helvetica;font-size: 12px;line-height: 150%;text-align: center;">

      <em>Copyright © |CURRENT_YEAR| |LIST:COMPANY|, All rights reserved.</em>
      <br>
      |IFNOT:ARCHIVE_PAGE|
      |LIST:DESCRIPTION|
      <br>
      <br>
      <strong>Our mailing address is:</strong>
      <br>
      |HTML:LIST_ADDRESS_HTML| |END:IF|
      <br>
      <br>
      Want to change how you receive these emails?<br>
      You can <a href="|UPDATE_PROFILE|" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #6ACC3B;font-weight: normal;text-decoration: underline;">update your preferences</a> or <a href="|UNSUB|" style="mso-line-height-rule: exactly;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #6ACC3B;font-weight: normal;text-decoration: underline;">unsubscribe from this list</a>.
      <br>
      <br>
      |IF:REWARDS| |HTML:REWARDS|
      |END:IF|

      </td>
      </tr>
      </tbody></table>
      <!--[if mso]>
      </td>
      <![endif]-->

      <!--[if mso]>
      </tr>
      </table>
      <![endif]-->
      </td>
      </tr>
      </tbody>
      </table></td>
      </tr>
      </table>
      <!--[if gte mso 9]>
      </td>
      </tr>
      </table>
      <![endif]-->
      <!-- // END TEMPLATE -->
      </td>
      </tr>
      </table>
      </center>
      </body>
      </html>'''
         }));

     if (response.statusCode == 200) {
       // If the server did return a 201 CREATED response,
       // then parse the JSON.
       print("chal gaya");
       print("maja aa gaya");
       setState(() {
         added = true;
       });
       print(response.body.toString());
     } else {
       // If the server did not return a 201 CREATED response,
       // then throw an exception.
       setState(() {
         error = response.body.toString();
       });

       throw Exception([response.body.toString()]);
     }
   }

  late MadeEasyCampaign a ;

  Future addCampaign() async {
    final response = await http.post(
      Uri.parse('https://us13.api.mailchimp.com/3.0/campaigns'),
      headers: <String, String>{
        'Authorization': 'auth key',
      },
      body: jsonEncode(<String, dynamic>{
        "type": "regular",
        "recipients":{
          "list_id":"ff91079a08"
        },
        "settings": {
          "subject_line": subjectLine.text.toString(),
          "preview_text": previewText.text.toString(),
          "reply_to": replyTO.text.toString(),
          "from_name": fromName.text.toString()
        },
        "content_type": "template"
      }),
    );

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {

      a = MadeEasyCampaign.fromJson(data);
      print(a.id.toString());
      int counter = 0;

      Timer.periodic(const Duration(seconds: 1), (timer) {
        print(timer.tick);
        counter+=1;
        if (counter == 2) {
          print("abb call karnge");
          setContent(a.id.toString());
          timer.cancel();
        }
      });
      print("this is id");
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      setState(() {
        error = response.body.toString();
      });
      throw Exception([response.body.toString()]);
    }
  }

  TextEditingController subjectLine = TextEditingController();

  TextEditingController previewText = TextEditingController();

  TextEditingController replyTO = TextEditingController();

  TextEditingController fromName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return OffsetProvider();
      },
      child: Consumer<OffsetProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return GestureDetector(
            onTap: () {
              value.closeDrawer();
            },
            child: AnimatedContainer(

              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              transform:
              Matrix4.translationValues(value.xOffset, value.yOffset, 0)
                ..scale(value.scaleFactor),
              padding: EdgeInsets.symmetric(horizontal: 10),
              duration: Duration(milliseconds: 300),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      value.isDrawerOpen
                          ? IconButton(
                          onPressed: () {
                            value.closeDrawer();
                          },
                          icon: Icon(Icons.arrow_back_ios))
                          : IconButton(
                        onPressed: () {
                          value.openDrawer();
                        },
                        icon: Icon(Icons.menu),
                        color: Colors.black,
                        iconSize: 20,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/mailchimp.png',
                            width: 120,
                            height: 10,
                          )
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/mailchamp.png',
                        ),
                        maxRadius: 20,
                      )
                    ],
                  ),


                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.52,
                    child: SingleChildScrollView(
                      child:Flex(direction: Axis.vertical,
                        children: [
                          SizedBox(height: 10,),
                          Container(
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: subjectLine,
                                  decoration: InputDecoration(
                                    hintText: "subject_line",
                                    labelText: 'subject_line',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                TextFormField(
                                  controller: previewText,
                                  decoration: InputDecoration(
                                    hintText: "preview_text",
                                    labelText: 'preview_text',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: replyTO,
                                  decoration: InputDecoration(
                                    hintText: "reply_to  Email@email.com",
                                    labelText: 'reply_to  Email@email.com',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                TextFormField(
                                  controller: fromName,
                                  decoration: InputDecoration(
                                    hintText: "from_name",
                                    labelText: 'from_name',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30,),
                                InkWell(
                                  onTap: (){
                                    print("clicked");
                                    addCampaign();
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 180,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blueGrey
                                    ),
                                    child: Center(child: Text(added?"Added":"Add Campaign",style: TextStyle(fontSize: 23,color: Colors.white),)),
                                  ),
                                ),
                                Text(error)
                              ],
                            ),
                          )
                        ],
                      ) ,
                    ),
                  )



                ],
              ),
            ),
          );
        },
      ),
    );
  }
}





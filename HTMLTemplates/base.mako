<!DOCTYPE html>
<html lang="en">
<head>
   <title>${self.title()}</title>
   ${self.head()} 
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Libraries -->
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <!-- UIkit CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.9.4/dist/css/uikit.min.css" />

<!-- UIkit JS -->
<script src="https://cdn.jsdelivr.net/npm/uikit@3.9.4/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.9.4/dist/js/uikit-icons.min.js"></script>
    <!-- Custom CSS -->
   <link rel="stylesheet" href="static/style.css">
  
</head>
%if user == None:
    <p style="text-align:right"><A HREF="/showSignup" class="uk-button uk-button-default" style="border-radius:10px;">Sign Up </A> -- <a href="/logout" class="uk-button uk-button-default" style="border-radius:10px;"> login</A></p>
%else:
    <p style="text-align:right"><A HREF="/logout" class="uk-button uk-button-default" style="border-radius:10px;">Logout</A></p>
%endif
    ${self.body()}

</body>

</html>
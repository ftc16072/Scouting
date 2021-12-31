<%def name="title()">FTC Scouting</%def>
<%def name="head()"></%def>
<%inherit file="base.mako" />
%if error:
    <div uk-alert>
        <a class="uk-alert-close" uk-close></a>
        <h3>Retry</h3>
        <p>${error}</p>
    </div>
%endif

<form action=signup method="post" enctype="multipart/form-data">
    <div class="uk-child-width-1-3@m uk-grid-small uk-grid-match" uk-grid>
        <div>
            <div class="uk-card"></div>
        </div>
        <div>
            <div class="uk-card uk-card-body">
                <h3 class="uk-card-title">Sign up</h3>
                <fieldset class="uk-fieldset">
                    <div class="uk-margin">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="uk-input" id="username" name="username">
                    </div>

                    <div class="uk-margin">
                        <label for="team" class="form-label">TeamNum</label>
                        <input type="number" class="uk-input" id="team" name="team">

                    </div>

                    <div class="uk-margin">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="uk-input" id="password" name="password">

                    </div>

                    <button type="submit" class="uk-button uk-button-primary">Sign Up</button>
                     <text class="uk-text-large"> OR </text>
                    <a href="/login"> <button class="uk-button uk-button-default">Sign In</button>  </a> 

                </fieldset>
            </div>
        </div>
        <div>
            <div class="uk-card"></div>
        </div>
    </div>

</form>
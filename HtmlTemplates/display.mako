<%def name="title()">Home Page - ftc16072</%def>
<%def name="head()"></%def>
<%inherit file = "base.mako"/>

<head>
<a href="/"> <button> Home </button> </a>

<h1 style="text-align:center;"> Matches </h1>
</head>

<body>
    <table class="matches">
        <tr class="heading"> <td> scouting form # </td> <td> Match #</td><td>Alliance</td> <td> Team #</td><td>skystoneBonus</td> <td>stonesDelivered</td> 
        <td>auto stones placed:</td><td>waffle</td><td>autoPark</td><td>teleStnsDliver</td><td>stonesPlaced</td><td> height</td><td>repositioning</td>
        <td>capstone</td><td>parking</td><td>notes</td><td>penalties</td><td>broken</td><td>Submited By:</td>
        %for match in matchList:
            <tr>
                <td>${match.matchId}</td>
                <td>${match.matchNum}</td>
                %if match.alliance:
                    <td>Red</td>
                %else:
                    <td>Blue</td>
                %endif
                <td>${match.teamNum}</td>
                <td>${match.skystoneBonus}</td>
                <td>${match.stonesDelivered}</td>
                <td>${match.autoStonesPlaced}
                <td>${match.waffle}</td>
                <td>${match.autoPark}</td>
                <td>${match.stonesDeliveredTele}</td>
                <td>${match.stonesPlaced}</td>
                <td>${match.height}</td>
                <td>${match.repositioning}</td>
                <td>${match.capstone}</td>
                <td>${match.parking}</td>
                <td>${match.notes}</td>
                <td>${match.penalties}</td>
                <td>${match.broken}</td>
                <td>${match.submitedByNum}</td>
            </tr>
        %endfor
    </table>
</body>

<div id="js-user" class="users">
 <!-- user-info and user owner-->
    <div id ="js-users-discourse"class="user-info owner">
        <div class="user-action-time"><p>asked</p>
            <span title="{{ getHumanDate(object.getCreatedAt())}}" class="relativetime">
                {{ getHumanDate(object.getCreatedAt()) }}</span>
            </span>
        </div>
        <div class="user-gravatar">
            <a href="/@{{user.getUsername()}}">
            <div class="gravatar-wrapper">
                {{ image(getUrlAvatar(user.getEmail(), 50) ,'class':'img-rounded' ,false) }}
            </div></a>
        </div>
        <div class="user-details">
            <a href="/@{{user.getUsername()}}">{{user.getInforUser() | capitalize}}</a><br>
            <span title="gold badges">
                <span class="badge1"></span>
                <span class="badgecount">{{user.countBadges('code1 = 1')}}</span>
            </span>
            <span title="silver badges">
                <span class="badge2"></span>
                <span class="badgecount">{{user.countBadges('code2 = 1')}}</span>
            </span>
            <span title="bronze badges">
                <span class="badge3"></span>
                <span class="badgecount">{{user.countBadges('code3 = 1')}}</span>
            </span>        </div>
    </div>
    {% if object.getEditedAt() %}
    <!-- Display userame modarator or admin -->
    {% set editorUser = user.getUserById(object.postHistory.getUsersId()) %}
        <div class="user-info edited">
            <div class="user-action-time">
                <p>edited</p>
                <span class="relativetime" title="{{ getHumanDate(object.getEditedAt()) }}">
                    {{ getHumanDate(object.getEditedAt()) }}
                </span>
            </div>
            <div class="user-gravatar">
                <a href="/@{{editorUser.getUsername()}}"><div class="gravatar-wrapper">
                    {{ image(getUrlAvatar(editorUser.getEmail(), 50) ,'class':'img-rounded', false) }}
                </div></a>
            </div>
            <div class="user-details">
                {{ link_to('@' ~ editorUser.getUsername(), editorUser.getInforUser() | capitalize)}}<br>

                <span title="reputation score" class="reputation-score">
                    {{ editorUser.getHumanKarma()}}
                </span>
                <span title="gold badges">
                    <span class="badge1"></span>
                    <span class="badgecount">{{editorUser.countBadges('code1 = 1')}}</span>
                </span>
                <span title="silver badges">
                    <span class="badge2"></span>
                    <span class="badgecount">{{editorUser.countBadges('code2 = 1')}}</span>
                </span>
                <span title="bronze badges">
                    <span class="badge3"></span>
                    <span class="badgecount">{{editorUser.countBadges('code3 = 1')}}</span>
                </span>
            </div>
        </div>
    {% endif %}
</div>

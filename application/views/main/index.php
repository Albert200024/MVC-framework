<div class="home-block"">
    <?="<h1 class='home-page-title fonts-Roboto'>$name</h1>" ?>

    <?="<h2 class='fonts-Roboto home-page-subtitle'>$newsDay</h2>" ?>
    <div class="news-block">
        <?php
        foreach ($newsInfo as $key => $value){
        ?>
            <h3 class="fonts-Roboto news-title"><?=$value["title"]?></h3>
            <p class="fonts-Roboto news-description"><?=$value["description"]?></p>
            <hr>
        <?php
        }
        ?>
    </div>
</div>

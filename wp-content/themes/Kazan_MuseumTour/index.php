<?php get_header(); ?>
    <div class="container">
        <?= do_shortcode('[image-slider]'); ?>
    </div>
    <main data-section="#museums">
        <div class="container">
            <h2 class="section-title">
                <span>Museums</span>
            </h2>
            <div class="row pt-3">
                <?php foreach (get_posts([
                    'post_type' => 'museum',
                    'posts_per_page' => 4,
                ]) as $museum): ?>
                    <div class="col-md-3">
                        <div class="card museum">
                            <img class="card-img" src="<?= get_field('image', $museum->ID); ?>">
                            <a class="museum-title" href="<?= get_permalink($museum->ID); ?>"><?= get_the_title($museum->ID); ?></a>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </main>
    <section class="bg-light" data-section="#split-view">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="section-title">
                        <span>Upcoming Events</span>
                    </h2>
                    <div class="row">
                        <?php foreach (get_posts([
                            'post_type' => 'event',
                            'posts_per_page' => 5,
                        ]) as $event): ?>
                            <div class="col-md-12 py-3">
                                <div class="card event">
                                    <div class="row no-gutters">
                                        <img class="col-md-4" src="<?= get_field('image', $event->ID); ?>">
                                        <div class="col-md-8 px-4 card-body">
                                            <p class="mb-3">
                                                <a class="card-title event-title" href="<?= get_permalink($event->ID); ?>"><?= get_the_title($event->ID); ?></a>
                                            </p>
                                            <p class="event-detail"><?= mb_substr($event->post_content, 0, 20); ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
                <div class="col-md-6">
                    <h2 class="section-title">
                        <span>Latest News Posts</span>
                    </h2>
                    <?php
                    $news = get_posts([
                        'post_type' => 'post',
                        'posts_per_page' => 5,
                    ]);
                    ?>
                    <div class="row">
                        <?php
                        $first_news = array_shift($news);
                        ?>
                        <div class="col-md-12 py-3">
                            <div class="card main-news news">
                                <img class="card-img" src="<?= get_the_post_thumbnail_url($first_news->ID); ?>">
                                <div class="card-body">
                                    <p class="mb-3">
                                        <a class="card-title event-title" href="<?= get_permalink($first_news->ID); ?>"><?= get_the_title($first_news->ID); ?></a>
                                    </p>
                                    <p class="event-detail"><?= mb_substr($event->post_content, 0, 20); ?></p>
                                    <p class="news-date"><?= date('Y-m-d', strtotime($first_news->post_date)); ?></p>
                                </div>
                            </div>
                        </div>
                        <?php foreach ($news as $current_news): ?>
                        <div class="col-md-6 py-3">
                            <div class="card news h-100">
                                <div class="card-body">
                                    <p class="mb-3">
                                        <a class="card-title event-title" href="<?= get_permalink($current_news->ID); ?>"><?= get_the_title($current_news->ID); ?></a>
                                    </p>
                                    <p class="event-detail"><?= mb_substr($event->post_content, 0, 20); ?></p>
                                    <p class="news-date"><?= date('Y-m-d', strtotime($current_news->post_date)); ?></p>
                                </div>
                            </div>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section data-section="#contact" id="contactSection">
        <div class="container">
            <?= do_shortcode('[contact-form-7 id="47" title="Contact Us"]'); ?>
        </div>
    </section>
<?php get_footer(); ?>
<style>
    #imageSlider .carousel-item > img {
        height: 480px;

        object-fit: cover;
    }

    #imageSlider .carousel-item {
        position: relative;
    }

    #imageSlider .slider-info {
        position: absolute;
        left: 0;
        bottom: 30px;

        display: flex;
        align-items: center;

        background-color: #6a0730;
        color: #f2f2f2;
        padding: 15px 30px;
    }

    #imageSlider .slider-link {
        display: inline-block;

        padding: 8px;

        border: 5px;
        background-color: #f2f2f2;
        color: #6a0730 !important;
        text-decoration: none !important;

        box-shadow: 1px 2px 5px rgba(0, 0, 0, .2);

        margin-left: 15px;
    }

    #imageSlider .slider-link:hover {
        filter: brightness(.8);
    }
</style>

<div id="imageSlider" class="carousel slide" data-ride="carousel">
    <div class="carousel-indicators">
        <ul class="row">
            <?php foreach ($image_sliders as $index => $image_slider): ?>
                <li<?= 0 == $index ? ' class="active"' : ''; ?> data-slide-to="<?= $index; ?>"></li>
            <?php endforeach; ?>
        </ul>
    </div>
    <div class="carousel-inner">
        <?php foreach ($image_sliders as $index => $image_slider): ?>
            <div class="carousel-item<?= 0 == $index ? ' active' : ''; ?>">
                <img class="d-block w-100" src="<?= get_field('image', $image_slider->ID); ?>" alt="">
                <div class="slider-info">
                    <span><?= get_the_title($image_slider->ID); ?></span>
                    <a class="slider-link" href="<?= get_field('link', $image_slider->ID); ?>">Show</a>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <a class="carousel-control-prev" href="#" role="button" data-target="#imageSlider" data-control="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#" role="button" data-target="#imageSlider" data-control="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>

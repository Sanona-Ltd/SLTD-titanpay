<?php

namespace Theme\Shofy\Helpers;

class SliderAutoplayHelper
{
    /**
     * Generate data attributes for slider autoplay functionality
     *
     * @param object $shortcode
     * @return string
     */
    public static function getDataAttributes($shortcode): string
    {
        $attributes = [
            'data-autoplay' => ($shortcode->is_autoplay === 'yes') ? 'true' : 'false',
            'data-autoplay-speed' => $shortcode->autoplay_speed ?: 3000,
            'data-loop' => ($shortcode->is_loop === 'no') ? 'false' : 'true',
        ];

        return implode(' ', array_map(
            fn ($key, $value) => sprintf('%s="%s"', $key, $value),
            array_keys($attributes),
            $attributes
        ));
    }

    /**
     * Get autoplay configuration for JavaScript
     *
     * @param object $element jQuery element
     * @return string JavaScript code snippet
     */
    public static function getJavaScriptConfig(): string
    {
        return '
            // Read autoplay settings from data attributes
            const isAutoplay = $element.data(\'autoplay\') === true || $element.data(\'autoplay\') === \'true\'
            const autoplaySpeed = parseInt($element.data(\'autoplay-speed\')) || 3000
            const isLoop = $element.data(\'loop\') !== false && $element.data(\'loop\') !== \'false\'
        ';
    }

    /**
     * Get autoplay configuration object for Swiper
     *
     * @return string JavaScript code snippet
     */
    public static function getSwiperAutoplayConfig(): string
    {
        return '
            // Add autoplay configuration if enabled
            if (isAutoplay) {
                swiperConfig.autoplay = {
                    delay: autoplaySpeed,
                    disableOnInteraction: false,
                }
            }
        ';
    }

    /**
     * Check if autoplay is enabled
     *
     * @param object $shortcode
     * @return bool
     */
    public static function isAutoplayEnabled($shortcode): bool
    {
        return $shortcode->is_autoplay === 'yes';
    }

    /**
     * Check if loop is enabled
     *
     * @param object $shortcode
     * @return bool
     */
    public static function isLoopEnabled($shortcode): bool
    {
        return $shortcode->is_loop !== 'no';
    }

    /**
     * Get autoplay speed
     *
     * @param object $shortcode
     * @return int
     */
    public static function getAutoplaySpeed($shortcode): int
    {
        return (int) ($shortcode->autoplay_speed ?: 3000);
    }

    /**
     * Get the default autoplay speed choices
     *
     * @return array
     */
    public static function getAutoplaySpeedChoices(): array
    {
        return array_combine(
            [2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000],
            [2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000]
        );
    }

    /**
     * Get the default loop choices
     *
     * @return array
     */
    public static function getLoopChoices(): array
    {
        return [
            'yes' => __('Continuously'),
            'no' => __('Stop on the last slide'),
        ];
    }

    /**
     * Get the default autoplay choices
     *
     * @return array
     */
    public static function getAutoplayChoices(): array
    {
        return [
            'no' => __('No'),
            'yes' => __('Yes'),
        ];
    }
}

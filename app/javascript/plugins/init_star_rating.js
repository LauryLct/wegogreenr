import "jquery-bar-rating";
import "jquery-bar-rating/dist/themes/css-stars.css";
import $ from 'jquery';

const initStarRating = () => {
  $('#review_rate').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
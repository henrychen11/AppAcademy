import React from 'react';

function GiphysIndexItem({ gif }) {
  return (
    <li className="giphy-li">
      <img src={gif.images.fixed_height.url} />
    </li>
  );
}

export default GiphysIndexItem;

<?php

namespace Modules\Category\Transformers;

use Illuminate\Http\Resources\Json\JsonResource;

class CategoryResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
            'id' => $this -> id,
            'name' => $this -> name,
            'created_at' => $this->created_at->format('D, j M Y  h:i A'),
            'updated_at' => $this->updated_at->format('D, j M Y  h:i A'),
        ];
    }
}

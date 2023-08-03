<?php

return [

 'accepted' => ':attribute kabul edilmelidir.',
'active_url' => ':attribute geçerli bir URL değil.',
'after' => ':attribute, :date tarihinden sonra olmalıdır.',
'after_or_equal' => ':attribute, :date tarihinden sonra veya ona eşit olmalıdır.',
'alpha' => ':attribute yalnızca harf içerebilir.',
'alpha_dash' => ':attribute yalnızca harf, rakam, tire ve alt çizgi içerebilir.',
'alpha_num' => ':attribute yalnızca harf ve rakam içerebilir.',
'array' => ':attribute bir dizi olmalıdır.',
'before' => ':attribute, :date tarihinden önce olmalıdır.',
'before_or_equal' => ':attribute, :date tarihinden önce veya ona eşit olmalıdır.',
'between' => [
    'numeric' => ':attribute, :min ile :max arasında olmalıdır.',
    'file' => ':attribute, :min ile :max kilobayt arasında olmalıdır.',
    'string' => ':attribute, :min ile :max karakter arasında olmalıdır.',
    'array' => ':attribute, :min ile :max öğe arasında olmalıdır.',
],
'boolean' => ':attribute alanı doğru veya yanlış olmalıdır.',
'confirmed' => ':attribute onayı uyuşmuyor.',
'date' => ':attribute geçerli bir tarih değil.',
'date_equals' => ':attribute, :date tarihine eşit olmalıdır.',
'date_format' => ':attribute, :format formatına uymuyor.',
'different' => ':attribute ile :other farklı olmalıdır.',
'digits' => ':attribute, :digits basamaklı olmalıdır.',
'digits_between' => ':attribute, :min ile :max basamak arasında olmalıdır.',
'dimensions' => ':attribute geçersiz resim boyutlarına sahip.',
'distinct' => ':attribute alanı yinelenen bir değere sahiptir.',
'email' => ':attribute geçerli bir e-posta adresi olmalıdır.',
'exists' => 'Seçilen :attribute geçersiz.',
'file' => ':attribute bir dosya olmalıdır.',
'filled' => ':attribute alanı bir değere sahip olmalıdır.',
'gt' => [
    'numeric' => ':attribute, :value değerinden büyük olmalıdır.',
    'file' => ':attribute, :value kilobayttan büyük olmalıdır.',
    'string' => ':attribute, :value karakterden büyük olmalıdır.',
    'array' => ':attribute, :value öğeden daha fazla olmalıdır.',
],
'gte' => [
    'numeric' => ':attribute, :value değerine eşit veya ondan büyük olmalıdır.',
    'file' => ':attribute, :value kilobayta eşit veya ondan büyük olmalıdır.',
    'string' => ':attribute, :value karakterine eşit veya ondan büyük olmalıdır.',
    'array' => ':attribute, :value öğe veya daha fazla olmalıdır.',
],
'image' => ':attribute bir resim olmalıdır.',
'in' => 'Seçilen :attribute geçersiz.',
'in_array' => ':attribute alanı :other içinde mevcut değil.',
'integer' => ':attribute bir tamsayı olmalıdır.',
'ip' => ':attribute geçerli bir IP adresi olmalıdır.',
'ipv4' => ':attribute geçerli bir IPv4 adresi olmalıdır.',
'ipv6' => ':attribute geçerli bir IPv6 adresi olmalıdır.',
'json' => ':attribute geçerli bir JSON dizgesi olmalıdır.',
'lt' => [
    'numeric' => ':attribute, :value değerinden küçük olmalıdır.',
    'file' => ':attribute, :value kilobayttan küçük olmalıdır.',
    'string' => ':attribute, :value karakterden küçük olmalıdır.',
    'array' => ':attribute, :value öğeden daha az olmalıdır.',
],
'lte' => [
    'numeric' => ':attribute, :value değerine eşit veya ondan küçük olmalıdır.',
    'file' => ':attribute, :value kilobayta eşit veya ondan küçük olmalıdır.',
    'string' => ':attribute, :value karakterine eşit veya ondan küçük olmalıdır.',
    'array' => ':attribute, :value öğe veya daha az olmalıdır.',
],
'max' => [
    'numeric' => ':attribute, :max değerinden büyük olmamalıdır.',
    'file' => ':attribute, :max kilobayttan büyük olmamalıdır.',
    'string' => ':attribute, :max karakterden büyük olmamalıdır.',
    'array' => ':attribute, :max öğeden fazla olmamalıdır.',
],
'mimes' => ':attribute dosya türü şunlardan biri olmalıdır: :values.',
'mimetypes' => ':attribute dosya türü şunlardan biri olmalıdır: :values.',
'min' => [
    'numeric' => ':attribute, en az :min olmalıdır.',
    'file' => ':attribute, en az :min kilobayt olmalıdır.',
    'string' => ':attribute, en az :min karakter olmalıdır.',
    'array' => ':attribute, en az :min öğe olmalıdır.',
],
'not_in' => 'Seçilen :attribute geçersiz.',
'not_regex' => ':attribute formatı geçersiz.',
'numeric' => ':attribute bir sayı olmalıdır.',
'present' => ':attribute alanı mevcut olmalıdır.',
'regex' => ':attribute formatı geçersiz.',
'required' => ':attribute alanı gereklidir.',
'required_if' => ':other :value ise :attribute alanı gereklidir.',
'required_unless' => ':other :values içinde değilse :attribute alanı gereklidir.',
'required_with' => ':values mevcut olduğunda :attribute alanı gereklidir.',
'required_with_all' => ':values mevcut olduğunda :attribute alanı gereklidir.',
'required_without' => ':values mevcut olmadığında :attribute alanı gereklidir.',
'required_without_all' => ':values hiçbiri mevcut olmadığında :attribute alanı gereklidir.',
'same' => ':attribute ile :other eşleşmelidir.',
'size' => [
    'numeric' => ':attribute, :size olmalıdır.',
    'file' => ':attribute, :size kilobayt olmalıdır.',
    'string' => ':attribute, :size karakter olmalıdır.',
    'array' => ':attribute, :size öğe içermelidir.',
],
'starts_with' => ':attribute şunlardan biriyle başlamalıdır: :values',
'string' => ':attribute bir dize olmalıdır.',
'timezone' => ':attribute geçerli bir saat dilimi olmalıdır.',
'unique' => ':attribute zaten alınmış.',
'uploaded' => ':attribute yüklenemedi.',
'url' => ':attribute formatı geçersiz.',
'uuid' => ':attribute geçerli bir UUID olmalıdır.',

/*
|--------------------------------------------------------------------------
| Custom Validation Language Lines
|--------------------------------------------------------------------------
|
| Here you may specify custom validation messages for attributes using the
| convention "attribute.rule" to name the lines. This makes it quick to
| specify a specific custom language line for a given attribute rule.
|
*/

'custom' => [
    'attribute-name' => [
        'rule-name' => 'özel-mesaj',
    ],
],

/*
|--------------------------------------------------------------------------
| Custom Validation Attributes
|--------------------------------------------------------------------------
|
| The following language lines are used to swap our attribute placeholder
| with something more reader friendly such as "E-Mail Address" instead
| of "email". This simply helps us make our message more expressive.
|
*/

'attributes' => [],


];
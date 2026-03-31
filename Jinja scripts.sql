--If statement

  {% set temperature = 60.0 %}
    On a day like this, I specially like 

  {% if temperature > 70 %}
    a refreshing lemon sorbet
    
  {% else %}
    a decadent chocolate cake.


  {% endif %}

  

  {# this is a comment #}
  
  --for loop example 1
{% for j in range(26) %}    
    select {{ j }} as number {% if not loop.last %} union all {% endif %}
{% endfor %}


{% set cool_string = "Wow cool beans!" %}
{% set my_second_cool_string = "This is Jinja!" %}
{%set m_fav_num = 26%}

{{ cool_string }} {{my_second_cool_string}} I want to write jinja {{my_fav_num}} years



--for loop example 2
{% set animals=['lemur', 'dingo','rhino', 'dog'] %}
{#
{{ animals[0] }}
--{{ animals[1] }}
--{{ animals[2] }}
--{{ animals[3] }}
#}
{% for animal in animals %}
    my favorite animal is the {{animal}}
{% endfor %}


--for loop example 3
{% set foods = ['radish','cucumber','chicken nugget','avocado'] %}

{%- for food in foods -%}        
    {% if food == 'chicken nugget' %}
         {%- set food_type = 'snack' -%}
    {% else %}
         {%- set food_type = 'vegetable' -%}
    {% endif %}
    The delicious {{ food }} is my favorite {{ food_type }}
{% endfor %}



--dictionary

{% set jennas_dictionary ={
'word' : 'data',
'part_of_speech' : 'noun',
'definition' : 'the building block of life'
}
%}

{{jennas_dictionary['word']}}
{{jennas_dictionary['word']}} ({{jennas_dictionary['part_of_speech']}}): defines as "{{jennas_dictionary['definition']}}"



{##}

select * from {{ ref('stg_stripe__payment') }}
where payment_status = 'success'
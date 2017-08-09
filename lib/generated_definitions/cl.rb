# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/cl.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module CL # :nodoc:
    def self.defined_regions
      [:cl]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Viernes Santo", :regions => [:cl]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -1, :name => "Sábado Santo", :regions => [:cl]},
            {:function => "st_peter_st_paul_cl(year)", :function_arguments => [:year],  :year_ranges => [{:after => 2000}],:name => "San Pedro y San Pablo", :regions => [:cl]},
            {:function => "other_churches_day_cl(year)", :function_arguments => [:year],  :year_ranges => [{:after => 2008}],:name => "Día de las Iglesias Evangélicas y Protestantes", :regions => [:cl]}],
      1 => [{:mday => 1, :name => "Año Nuevo", :regions => [:cl]}],
      5 => [{:mday => 1, :name => "Día del Trabajo", :regions => [:cl]},
            {:mday => 21, :name => "Día de las Glorias Navales", :regions => [:cl]}],
      6 => [{:mday => 29,  :year_ranges => [{:before => 1999}],:name => "San Pedro y San Pablo", :regions => [:cl]}],
      7 => [{:mday => 16, :name => "Día de la Virgen del Carmen", :regions => [:cl]}],
      8 => [{:mday => 15, :name => "Asunción de la Virgen", :regions => [:cl]}],
      9 => [{:mday => 18, :name => "Independencia Nacional", :regions => [:cl]},
            {:mday => 19, :name => "Día de las Glorias del Ejército", :regions => [:cl]}],
      10 => [{:mday => 12,  :year_ranges => [{:before => 1999}],:name => "Encuentro de Dos Mundos", :regions => [:cl]},
            {:function => "columbus_day_cl(year)", :function_arguments => [:year],  :year_ranges => [{:after => 2000}],:name => "Encuentro de Dos Mundos", :regions => [:cl]}],
      11 => [{:mday => 1, :name => "Día de Todos los Santos", :regions => [:cl]}],
      12 => [{:mday => 8, :name => "Inmaculada Concepción de María", :regions => [:cl]},
            {:mday => 25, :name => "Navidad", :regions => [:cl]}]
      }
    end

    def self.custom_methods
      {
        "st_peter_st_paul_cl(year)" => Proc.new { |year|
date = Date.civil(year, 6, 29)
if [2,3,4].include?(date.wday)
  date -= (date.wday - 1)
elsif date.wday == 5
  date += 3
end

date
},

"columbus_day_cl(year)" => Proc.new { |year|
date = Date.civil(year, 10, 12)
if [2,3,4].include?(date.wday)
  date -= (date.wday - 1)
elsif date.wday == 5
  date += 3
end

date
},

"other_churches_day_cl(year)" => Proc.new { |year|
date = Date.civil(year, 10, 31)
if date.wday == 2
  date -= 4
elsif date.wday == 3
  date += 2
end

date
},


      }
    end
  end
end

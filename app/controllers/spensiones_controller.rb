class SpensionesController < ApplicationController
  def index
    response = RestClient::Request.new(
      :method => :get,
      :url => "https://www.spensiones.cl/apps/valoresCuotaFondo/vcfAFPxls.php?aaaaini=2022&aaaafin=2022&tf=A&fecconf=20230630",
      :verify_ssl => false
    ).execute
    @data = response.to_str.gsub!("\r\n", ';').split(';').split('Valores Provisorios - Sujetos a Confirmacion')[0]
    #@csv_string = ["CSV", @data].to_csv   # to CSV
    #@csv_string2 = response.to_csv
    #@data2 = response.to_str.split('Valores Provisorios - Sujetos a Confirmacion')[0].to_csv
    @csv_file_path = response
    #@pager = Kaminari.paginate_array(@csv_file_path).page(params[:page]).per(20)
  end
end

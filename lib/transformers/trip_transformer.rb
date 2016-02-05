module Transformers
  class TripTransformer < Goaltender::Transformer
    input :name
    input :start_date, :date, parse_format: '%m/%d/%Y'
    input :end_date, :date, parse_format: '%m/%d/%Y'
  end
end

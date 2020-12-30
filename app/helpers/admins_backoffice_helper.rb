module AdminsBackofficeHelper

    def translate_attributes(object = nil, method = nil)
        (object && method) ?  object.model.human_attribute_name(method) : "informe os parâmetros"
        
    end
    
    def translate_model_name(object = nil, method = nil)
       (object && method) ? object.model_name.human(method) : "erro"
        
    end
    
end

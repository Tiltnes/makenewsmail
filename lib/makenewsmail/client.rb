module Makenewsmail
  class Client < Configuration
    #list handling
    def get_lists
      self.get_xml('/V1/lists/lists.xml')
    end
    
    def create_list(params = {})
      xml = {
        create: params
      }

      self.post_xml(xml.to_xml(root: "subscriber-lists"), '/V1/lists/lists.xml')
    end
    
    #subscribers handling
    def subscribe(list_id, params = {})
      xml = {
        subscribe: params
      }
      
      self.post_xml(xml.to_xml(root: "subscribers"), "/V1/subscribers/#{list_id}.xml")
    end
    
    def unsubscribe(list_id, params = {})
      xml = {
        unsubscribe: params
      }
      
      self.post_xml(xml.to_xml(root: "subscribers"), "/V1/subscribers/#{list_id}.xml")
    end
  end
end
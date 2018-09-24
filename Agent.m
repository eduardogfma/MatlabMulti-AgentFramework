classdef Agent < handle
    %AGENT Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        uniqueId
        wealth = 1;
    end
    
    methods
        function self = Agent(uniqueId)
            if nargin == 1
                self.uniqueId = uniqueId;
            end
        end
        
        function self = step (self,agentsDic)
            i = randi(length(agentsDic));
            
            if i == self.uniqueId
                while ( i == self.uniqueId)
                    i = randi(length(agentsDic));
                end
            end
            
            agentsDic{1,i}.wealth = agentsDic{1,i}.wealth + 1;
            self.wealth = self.wealth - 1;
            
        end
    end
    
end


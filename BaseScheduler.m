classdef BaseScheduler<handle
    %BASESCHEDULER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        time = 0;
        steps = 0;
        agents = 0;
        agentsDic = {};     % cell array -- Collection of agent objects
    end
    
    methods
        function self = add(self,agent)
            self.agents = self.agents + 1;
            if isempty(self.agentsDic ) == 1
                self.agentsDic{1} = agent;
            else
                [~,n] = size(self.agentsDic);
                self.agentsDic{1,n+1} = agent;
            end
            
        end
    end
    
end


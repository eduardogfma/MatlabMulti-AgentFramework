classdef RandomActivation < BaseScheduler
    %RANDOMACTIVATION Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods
        function self = step (self)
            %   Executes the step of all agents, one at a time, in random 
            %   order.
            
            self.agentsDic = self.agentsDic(randperm(numel(self.agentsDic))); % shuffle shcedule

            for i = 1:length(self.agentsDic)
                self.agentsDic{1,i}.step(self.agentsDic);
                self.steps = self.steps + 1;
                self.time = self.time + 1;
            end
        end
    end
    
end


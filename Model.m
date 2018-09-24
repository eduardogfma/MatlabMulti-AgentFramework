classdef Model
    %MODEL Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        numAngents      % int -- number of agents
        schedule        % obj -- Time module
    end
    
    methods
        function self = Model(N)
            if nargin == 1
                self.numAngents = N;
                self.schedule = RandomActivation();
                
                % Create agents
                for i = 1:N
                    uniqueId = strcat('ag_',int2str(i));
                    a = Agent(uniqueId);
                    self.schedule.add(a);
                end
            end
        end
        
        function wealth = collect(self)
            lenSched = length(self.schedule.agentsDic);
            
            wealth = zeros(1, length(lenSched));
            
            for i = 1 : lenSched        % sorted
                for j = 1 : lenSched    % shuffled
                    
                    id = self.schedule.agentsDic{1,j}.uniqueId;
                    id = strsplit(id,'_');
                    id = id(:,end);
                    id = str2double(id{1,1});
                    
                    if id == i
                        wealth(1, i) = self.schedule.agentsDic{1,j}.wealth;
                    end
                end
            end
        end
        
        function visualization(self)
            wealth = collect(self);
            bar(wealth)
            grid on
            ylim([-15,20])
            pause(0.08)
        end
        
        function step(self)
            self.schedule.step();
        end       
        
    end
    
end


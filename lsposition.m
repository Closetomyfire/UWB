function [resultt]=lsposition(x1,y1,d1,x2,y2,d2,x3,y3,d3,x4,y4,d4)
    A=[2*(x2-x1),2*(y2-y1);
        2*(x3-x1),2*(y3-y1);
       2*(x4-x1),2*(y4-y1)];

    B=[d1*d1-d2.^2+x2.^2-x1.^2+y2.^2-y1.^2;
        d1*d1-d3.^2+x3.^2-x1.^2+y3.^2-y1.^2;
        d1*d1-d4.^2+x4.^2-x1.^2+y4.^2-y1.^2];

    result=(A'*A\A'*B);
    resultt=result';
end

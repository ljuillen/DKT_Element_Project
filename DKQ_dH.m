function [dHxdxi,dHxdyi, dHydxi, dHydyi]=DKQ_dH(x_ij, y_ij, l_ij, xi,yi)
  
    

           
           [a5, a6, a7, a8] = a_k{:};
           [b5, b6, b7, b8] = b_k{:};
           [c5, c6, c7, c8] = c_k{:};
           [d5, d6, d7, d8] = d_k{:};
           [e5, e6, e7, e8] = e_k{:};

           dNdxi=[0.25*(2*xi+yi)*(1-yi),...
                  0.25*(2*xi-yi)*(1-yi),...
                  0.25*(2*xi+yi)*(1+yi),...
                  0.25*(2*xi-yi)*(1+yi),...
                  -xi*(1-yi),...
                  0.5*(1-yi^2),...
                  -xi*(1+yi),...
                  -0.5*(1-yi^2)];
           
           dNdyi=[0.25*(2*yi+xi)*(1-yi),...
                  0.25*(2*yi-xi)*(1+yi),...
                  0.25*(2*yi+xi)*(1+yi),...
                  0.25*(2*yi-xi)*(1-yi),...
                  -0.5*(1-yi^2),...
                  -yi*(1+xi),...
                  0.5*(1-yi^2),...
                  -yi*(1-xi)];
          
          dHxdxi=[1.5*(a5*dNdxi(5)-a8*dNdxi(8));
                   b5*dNdxi(5)+b8*dNdxi(8);
                   dNdxi(1)-c5*dNdxi(5)-c8*dNdxi(8);
                   1.5*(a6*dNdxi(6)-a5*dNdxi(5));
                   b6*dNdxi(6)+b5*dNdxi(5);
                   dNdxi(2)-c6*dNdxi(6)-c5*dNdxi(5);
                   1.5*(a7*dNdxi(7)-a6*dNdxi(6));
                   b7*dNdxi(7)+b6*dNdxi(6);
                   dNdxi(3)-c7*dNdxi(7)-c6*dNdxi(6);
                   1.5*(a8*dNdxi(8)-a7*dNdxi(7));
                   b8*dNdxi(8)+b7*dNdxi(7);
                   dNdxi(4)-c8*dNdxi(8)-c7*dNdxi(7)];
                  
                   
          dHxdyi=[1.5*(a5*dNdyi(5)-a8*dNdyi(8));
                   b5*dNdyi(5)+b8*dNdyi(8);
                   dNdyi(1)-c5*dNdyi(5)-c8*dNdyi(8);
                   1.5*(a6*dNdyi(6)-a5*dNdyi(5));
                   b6*dNdyi(6)+b5*dNdyi(5);
                   dNdyi(2)-c6*dNdyi(6)-c5*dNdyi(5);
                   1.5*(a7*dNdyi(7)-a6*dNdyi(6));
                   b7*dNdyi(7)+b6*dNdyi(6);
                   dNdyi(3)-c7*dNdyi(7)-c6*dNdyi(6);
                   1.5*(a8*dNdyi(8)-a7*dNdyi(7));
                   b8*dNdyi(8)+b7*dNdyi(7);
                   dNdyi(4)-c8*dNdyi(8)-c7*dNdyi(7)];
                   
          
          dHydxi=[1.5*(d5*dNdxi(5)-d8*dNdxi(8));
                   -dNdxi(1)-e5*dNdxi(5)-e8*dNdxi(8);
                   -b5*dNdxi(5)-b8*dNdxi(8);
                   1.5*(d7*dNdxi(7)-d6*dNdxi(6));
                   -dNdxi(2)-e6*dNdxi(6)-e5*dNdxi(5);
                   -b6*dNdxi(6)-b5*dNdxi(5);
                   1.5*(d7*dNdxi(7)-d6*dNdxi(6));
                   -dNdxi(3)-e7*dNdxi(7)-e6*dNdxi(6);
                   -b7*dNdxi(7)-b6*dNdxi(6);
                   1.5*(d8*dNdxi(8)-d7*dNdxi(7))
                   -dNdxi(4)-e8*dNdxi(8)-e7*dNdxi(7);
                   -b8*dNdxi(8)-b7*dNdxi(7)];
               
           dHydyi=[1.5*(d5*dNdyi(5)-d8*dNdyi(8));
                   -dNdyi(1)-e5*dNdyi(5)-e8*dNdyi(8);
                   -b5*dNdyi(5)-b8*dNdyi(8);
                   1.5*(d7*dNdyi(7)-d6*dNdyi(6));
                   -dNdyi(2)-e6*dNdyi(6)-e5*dNdyi(5);
                   -b6*dNdyi(6)-b5*dNdyi(5);
                   1.5*(d7*dNdyi(7)-d6*dNdyi(6));
                   -dNdyi(3)-e7*dNdyi(7)-e6*dNdyi(6);
                   -b7*dNdyi(7)-b6*dNdyi(6);
                   1.5*(d8*dNdyi(8)-d7*dNdyi(7))
                   -dNdyi(4)-e8*dNdyi(8)-e7*dNdyi(7);
                   -b8*dNdyi(8)-b7*dNdyi(7)];
end
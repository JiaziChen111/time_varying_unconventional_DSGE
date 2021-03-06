function [residual, g1, g2] = FA_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                    columns: equations in order of declaration
%                                                    rows: variables in declaration order
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: equations in order of declaration
%                                                       rows: variables in declaration order
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 42, 1);

%
% Model equations
%

T29 = y(42)^(1-params(35));
T40 = (1-params(1))*y(40)^((1-params(35))/params(36))+params(1)*y(41)^(1/params(36));
T50 = params(1)*(T29/y(41))^(1-1/params(36))*exp(y(13));
T75 = exp(y(10))*exp(y(22))*(1-params(7))*exp(y(1))/exp(y(5));
T93 = exp(y(11))*params(1)*(1-params(6))*(exp(y(12))-exp(y(13)))+exp(y(17))*params(6)*params(1)*exp(y(11))*exp(y(21));
T151 = exp(y(22))*params(7)*exp(y(2))/exp(y(3))+exp(y(36))*(exp(y(9))-exp(y(32)));
T161 = exp(y(35))*(exp(y(3))*exp(y(36))*exp(y(25)))^params(7);
T181 = exp(y(22))*params(7)*exp(y(2))/exp(y(25));
T185 = exp(y(3))*exp(y(36))*params(31)*exp(y(25))^params(5);
T213 = exp(y(38));
T219 = exp(y(27))*params(11)*T213^((-params(12))*params(10));
T220 = T213^params(10);
T221 = T219*T220;
T230 = (1-params(11)*T213^(params(12)*(1-params(11)))*T213^(params(11)-1))/(1-params(11));
T250 = exp(y(28))*T220*exp(y(11))*params(1)*params(11)*T213^(params(12)*(-params(10)));
T260 = T213^(params(12)*(1-params(10)));
T262 = exp(y(29))*exp(y(11))*params(1)*params(11)*T213^(params(10)-1)*T260;
T270 = T213*exp(y(28))*params(10)/(params(10)-1)/exp(y(29));
T283 = exp(y(30))^params(15);
T287 = 1/params(1)*T213^params(13);
T288 = exp(y(26))/(params(10)/(params(10)-1));
T293 = (T287*T288^params(14))^(1-params(15));
T326 = exp(y(1))*exp(y(22))*params(7)/(exp(y(3))*exp(y(36)));
T343 = (-(exp(y(1))*exp(y(22))*(1-params(7))/exp(y(5))));
T346 = (-(exp(y(22))*params(7)*exp(y(2))/exp(y(3))/exp(y(9))));
T358 = (-(exp(y(5))^(1-params(7))*exp(y(35))*exp(y(3))*exp(y(36))*exp(y(25))*getPowerDeriv(exp(y(3))*exp(y(36))*exp(y(25)),params(7),1)));
T367 = (-((-(exp(y(3))*exp(y(36))*exp(y(1))*exp(y(22))*params(7)))/(exp(y(3))*exp(y(36))*exp(y(3))*exp(y(36)))));
T393 = (exp(y(7))-exp(y(7))*params(3))*getPowerDeriv(exp(y(7))-exp(y(7))*params(3),(-params(2)),1);
T464 = getPowerDeriv(T287*T288^params(14),1-params(15),1);
T554 = getPowerDeriv(T40,params(36)/(1-params(35)),1);
T564 = getPowerDeriv(T29/y(41),1-1/params(36),1);
lhs =y(40);
rhs =log(exp(y(7))-exp(y(7))*params(3))-params(30)/(1+params(4))*exp(y(5))^(1+params(4));
residual(1)= lhs-rhs;
lhs =y(41);
rhs =T29;
residual(2)= lhs-rhs;
lhs =y(42);
rhs =T40^(params(36)/(1-params(35)));
residual(3)= lhs-rhs;
lhs =T50;
rhs =1;
residual(4)= lhs-rhs;
lhs =exp(y(10));
rhs =(exp(y(7))-exp(y(7))*params(3))^(-params(2))-(exp(y(7))-exp(y(7))*params(3))^(-params(2))*params(3)*params(1);
residual(5)= lhs-rhs;
lhs =exp(y(11));
rhs =1;
residual(6)= lhs-rhs;
lhs =params(30)*exp(y(5))^params(4);
rhs =T75;
residual(7)= lhs-rhs;
lhs =exp(y(17));
rhs =T93;
residual(8)= lhs-rhs;
lhs =exp(y(18));
rhs =1-params(6)+exp(y(18))*params(6)*params(1)*exp(y(11))*exp(y(20));
residual(9)= lhs-rhs;
lhs =exp(y(19));
rhs =exp(y(18))/(params(29)-exp(y(17)));
residual(10)= lhs-rhs;
lhs =exp(y(20));
rhs =exp(y(13))+(exp(y(12))-exp(y(13)))*exp(y(19));
residual(11)= lhs-rhs;
lhs =exp(y(21));
rhs =exp(y(20));
residual(12)= lhs-rhs;
lhs =exp(y(9))*exp(y(3));
rhs =exp(y(19))*exp(y(14));
residual(13)= lhs-rhs;
lhs =exp(y(14));
rhs =exp(y(15))+exp(y(16));
residual(14)= lhs-rhs;
lhs =exp(y(15));
rhs =exp(y(14))*params(6)*exp(y(20))*exp((-x(4)));
residual(15)= lhs-rhs;
lhs =exp(y(16));
rhs =exp(y(3))*exp(y(9))*params(28)*exp(y(36));
residual(16)= lhs-rhs;
lhs =exp(y(12));
rhs =T151/exp(y(9));
residual(17)= lhs-rhs;
lhs =exp(y(2));
rhs =T161*exp(y(5))^(1-params(7));
residual(18)= lhs-rhs;
lhs =exp(y(9));
rhs =1;
residual(19)= lhs-rhs;
lhs =exp(y(32));
rhs =params(32)+params(31)/(1+params(5))*exp(y(25))^(1+params(5));
residual(20)= lhs-rhs;
lhs =T181;
rhs =T185;
residual(21)= lhs-rhs;
lhs =y(33);
rhs =exp(y(6))-exp(y(3))*exp(y(36))*exp(y(32));
residual(22)= lhs-rhs;
lhs =exp(y(3));
rhs =y(33)+exp(y(3))*exp(y(36));
residual(23)= lhs-rhs;
lhs =exp(y(8));
rhs =params(33)*exp(y(37));
residual(24)= lhs-rhs;
lhs =exp(y(1));
rhs =exp(y(6))+exp(y(7))+exp(y(8));
residual(25)= lhs-rhs;
lhs =exp(y(2));
rhs =exp(y(1))*exp(y(27));
residual(26)= lhs-rhs;
lhs =exp(y(27));
rhs =T221+(1-params(11))*T230^((-params(10))/(1-params(11)));
residual(27)= lhs-rhs;
lhs =exp(y(26));
rhs =1/exp(y(22));
residual(28)= lhs-rhs;
lhs =exp(y(28));
rhs =exp(y(22))*exp(y(1))+T250;
residual(29)= lhs-rhs;
lhs =exp(y(29));
rhs =exp(y(1))+T262;
residual(30)= lhs-rhs;
lhs =exp(y(39));
rhs =T270;
residual(31)= lhs-rhs;
lhs =T213^(1-params(10));
rhs =params(11)*T260+(1-params(11))*exp(y(39))^(1-params(10));
residual(32)= lhs-rhs;
lhs =exp(y(30));
rhs =exp(y(13))*T213;
residual(33)= lhs-rhs;
lhs =exp(y(30));
rhs =T283*T293*exp(x(5));
residual(34)= lhs-rhs;
lhs =y(35);
rhs =y(35)*params(18)-x(1);
residual(35)= lhs-rhs;
lhs =y(36);
rhs =y(36)*params(16)-x(2);
residual(36)= lhs-rhs;
lhs =y(37);
rhs =y(37)*params(20)-x(3);
residual(37)= lhs-rhs;
lhs =exp(y(4));
rhs =exp(y(3))*exp(y(36));
residual(38)= lhs-rhs;
lhs =exp(y(23));
rhs =exp(y(1))*exp(y(22))*(1-params(7))/exp(y(5));
residual(39)= lhs-rhs;
lhs =exp(y(24));
rhs =T326;
residual(40)= lhs-rhs;
lhs =y(34);
rhs =log(exp(y(7))-exp(y(7))*params(3))-params(30)*exp(y(5))^(1+params(4))/(1+params(4))+params(1)*y(34);
residual(41)= lhs-rhs;
lhs =exp(y(31));
rhs =exp(y(12))/exp(y(13));
residual(42)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(42, 42);

  %
  % Jacobian matrix
  %

  g1(1,5)=params(30)/(1+params(4))*exp(y(5))*getPowerDeriv(exp(y(5)),1+params(4),1);
  g1(1,7)=(-1);
  g1(1,40)=1;
  g1(2,41)=1;
  g1(2,42)=(-(getPowerDeriv(y(42),1-params(35),1)));
  g1(3,40)=(-((1-params(1))*getPowerDeriv(y(40),(1-params(35))/params(36),1)*T554));
  g1(3,41)=(-(T554*params(1)*getPowerDeriv(y(41),1/params(36),1)));
  g1(3,42)=1;
  g1(4,13)=T50;
  g1(4,41)=exp(y(13))*params(1)*(-T29)/(y(41)*y(41))*T564;
  g1(4,42)=exp(y(13))*params(1)*T564*getPowerDeriv(y(42),1-params(35),1)/y(41);
  g1(5,7)=(-(T393-params(3)*params(1)*T393));
  g1(5,10)=exp(y(10));
  g1(6,11)=exp(y(11));
  g1(7,1)=(-T75);
  g1(7,5)=params(30)*exp(y(5))*getPowerDeriv(exp(y(5)),params(4),1)-(-(exp(y(5))*exp(y(10))*exp(y(22))*(1-params(7))*exp(y(1))))/(exp(y(5))*exp(y(5)));
  g1(7,10)=(-T75);
  g1(7,22)=(-T75);
  g1(8,11)=(-T93);
  g1(8,12)=(-(exp(y(11))*params(1)*(1-params(6))*exp(y(12))));
  g1(8,13)=(-(exp(y(11))*params(1)*(1-params(6))*(-exp(y(13)))));
  g1(8,17)=exp(y(17))-exp(y(17))*params(6)*params(1)*exp(y(11))*exp(y(21));
  g1(8,21)=(-(exp(y(17))*params(6)*params(1)*exp(y(11))*exp(y(21))));
  g1(9,11)=(-(exp(y(18))*params(6)*params(1)*exp(y(11))*exp(y(20))));
  g1(9,18)=exp(y(18))-exp(y(18))*params(6)*params(1)*exp(y(11))*exp(y(20));
  g1(9,20)=(-(exp(y(18))*params(6)*params(1)*exp(y(11))*exp(y(20))));
  g1(10,17)=(-((-(exp(y(18))*(-exp(y(17)))))/((params(29)-exp(y(17)))*(params(29)-exp(y(17))))));
  g1(10,18)=(-(exp(y(18))/(params(29)-exp(y(17)))));
  g1(10,19)=exp(y(19));
  g1(11,12)=(-(exp(y(12))*exp(y(19))));
  g1(11,13)=(-(exp(y(13))+exp(y(19))*(-exp(y(13)))));
  g1(11,19)=(-((exp(y(12))-exp(y(13)))*exp(y(19))));
  g1(11,20)=exp(y(20));
  g1(12,20)=(-exp(y(20)));
  g1(12,21)=exp(y(21));
  g1(13,3)=exp(y(9))*exp(y(3));
  g1(13,9)=exp(y(9))*exp(y(3));
  g1(13,14)=(-(exp(y(19))*exp(y(14))));
  g1(13,19)=(-(exp(y(19))*exp(y(14))));
  g1(14,14)=exp(y(14));
  g1(14,15)=(-exp(y(15)));
  g1(14,16)=(-exp(y(16)));
  g1(15,14)=(-(exp(y(14))*params(6)*exp(y(20))*exp((-x(4)))));
  g1(15,15)=exp(y(15));
  g1(15,20)=(-(exp(y(14))*params(6)*exp(y(20))*exp((-x(4)))));
  g1(16,3)=(-(exp(y(3))*exp(y(9))*params(28)*exp(y(36))));
  g1(16,9)=(-(exp(y(3))*exp(y(9))*params(28)*exp(y(36))));
  g1(16,16)=exp(y(16));
  g1(16,36)=(-(exp(y(3))*exp(y(9))*params(28)*exp(y(36))));
  g1(17,2)=T346;
  g1(17,3)=(-((-(exp(y(3))*exp(y(22))*params(7)*exp(y(2))))/(exp(y(3))*exp(y(3)))/exp(y(9))));
  g1(17,9)=(-((exp(y(9))*exp(y(9))*exp(y(36))-exp(y(9))*T151)/(exp(y(9))*exp(y(9)))));
  g1(17,12)=exp(y(12));
  g1(17,22)=T346;
  g1(17,32)=(-(exp(y(36))*(-exp(y(32)))/exp(y(9))));
  g1(17,36)=(-(exp(y(36))*(exp(y(9))-exp(y(32)))/exp(y(9))));
  g1(18,2)=exp(y(2));
  g1(18,3)=T358;
  g1(18,5)=(-(T161*exp(y(5))*getPowerDeriv(exp(y(5)),1-params(7),1)));
  g1(18,25)=T358;
  g1(18,35)=(-(T161*exp(y(5))^(1-params(7))));
  g1(18,36)=T358;
  g1(19,9)=exp(y(9));
  g1(20,25)=(-(params(31)/(1+params(5))*exp(y(25))*getPowerDeriv(exp(y(25)),1+params(5),1)));
  g1(20,32)=exp(y(32));
  g1(21,2)=T181;
  g1(21,3)=(-T185);
  g1(21,22)=T181;
  g1(21,25)=(-(exp(y(22))*params(7)*exp(y(2))*exp(y(25))))/(exp(y(25))*exp(y(25)))-exp(y(3))*exp(y(36))*params(31)*exp(y(25))*getPowerDeriv(exp(y(25)),params(5),1);
  g1(21,36)=(-T185);
  g1(22,3)=exp(y(3))*exp(y(36))*exp(y(32));
  g1(22,6)=(-exp(y(6)));
  g1(22,32)=exp(y(3))*exp(y(36))*exp(y(32));
  g1(22,33)=1;
  g1(22,36)=exp(y(3))*exp(y(36))*exp(y(32));
  g1(23,3)=exp(y(3))-exp(y(3))*exp(y(36));
  g1(23,33)=(-1);
  g1(23,36)=(-(exp(y(3))*exp(y(36))));
  g1(24,8)=exp(y(8));
  g1(24,37)=(-(params(33)*exp(y(37))));
  g1(25,1)=exp(y(1));
  g1(25,6)=(-exp(y(6)));
  g1(25,7)=(-exp(y(7)));
  g1(25,8)=(-exp(y(8)));
  g1(26,1)=(-(exp(y(1))*exp(y(27))));
  g1(26,2)=exp(y(2));
  g1(26,27)=(-(exp(y(1))*exp(y(27))));
  g1(27,27)=exp(y(27))-T221;
  g1(27,38)=(-(T220*exp(y(27))*params(11)*T213*getPowerDeriv(T213,(-params(12))*params(10),1)+T219*T213*getPowerDeriv(T213,params(10),1)+(1-params(11))*(-(T213^(params(11)-1)*params(11)*T213*getPowerDeriv(T213,params(12)*(1-params(11)),1)+params(11)*T213^(params(12)*(1-params(11)))*T213*getPowerDeriv(T213,params(11)-1,1)))/(1-params(11))*getPowerDeriv(T230,(-params(10))/(1-params(11)),1)));
  g1(28,22)=(-((-exp(y(22)))/(exp(y(22))*exp(y(22)))));
  g1(28,26)=exp(y(26));
  g1(29,1)=(-(exp(y(22))*exp(y(1))));
  g1(29,11)=(-T250);
  g1(29,22)=(-(exp(y(22))*exp(y(1))));
  g1(29,28)=exp(y(28))-T250;
  g1(29,38)=(-(exp(y(28))*(T213^(params(12)*(-params(10)))*exp(y(11))*params(1)*params(11)*T213*getPowerDeriv(T213,params(10),1)+T220*exp(y(11))*params(1)*params(11)*T213*getPowerDeriv(T213,params(12)*(-params(10)),1))));
  g1(30,1)=(-exp(y(1)));
  g1(30,11)=(-T262);
  g1(30,29)=exp(y(29))-T262;
  g1(30,38)=(-(exp(y(29))*(T260*exp(y(11))*params(1)*params(11)*T213*getPowerDeriv(T213,params(10)-1,1)+exp(y(11))*params(1)*params(11)*T213^(params(10)-1)*T213*getPowerDeriv(T213,params(12)*(1-params(10)),1))));
  g1(31,28)=(-T270);
  g1(31,29)=(-(T213*(-(exp(y(29))*exp(y(28))*params(10)/(params(10)-1)))/(exp(y(29))*exp(y(29)))));
  g1(31,38)=(-T270);
  g1(31,39)=exp(y(39));
  g1(32,38)=T213*getPowerDeriv(T213,1-params(10),1)-params(11)*T213*getPowerDeriv(T213,params(12)*(1-params(10)),1);
  g1(32,39)=(-((1-params(11))*exp(y(39))*getPowerDeriv(exp(y(39)),1-params(10),1)));
  g1(33,13)=(-(exp(y(13))*T213));
  g1(33,30)=exp(y(30));
  g1(33,38)=(-(exp(y(13))*T213));
  g1(34,26)=(-(exp(x(5))*T283*T287*T288*getPowerDeriv(T288,params(14),1)*T464));
  g1(34,30)=exp(y(30))-exp(x(5))*T293*exp(y(30))*getPowerDeriv(exp(y(30)),params(15),1);
  g1(34,38)=(-(exp(x(5))*T283*T464*T288^params(14)*1/params(1)*T213*getPowerDeriv(T213,params(13),1)));
  g1(35,35)=1-params(18);
  g1(36,36)=1-params(16);
  g1(37,37)=1-params(20);
  g1(38,3)=(-(exp(y(3))*exp(y(36))));
  g1(38,4)=exp(y(4));
  g1(38,36)=(-(exp(y(3))*exp(y(36))));
  g1(39,1)=T343;
  g1(39,5)=(-((-(exp(y(5))*exp(y(1))*exp(y(22))*(1-params(7))))/(exp(y(5))*exp(y(5)))));
  g1(39,22)=T343;
  g1(39,23)=exp(y(23));
  g1(40,1)=(-T326);
  g1(40,3)=T367;
  g1(40,22)=(-T326);
  g1(40,24)=exp(y(24));
  g1(40,36)=T367;
  g1(41,5)=params(30)*exp(y(5))*getPowerDeriv(exp(y(5)),1+params(4),1)/(1+params(4));
  g1(41,7)=(-1);
  g1(41,34)=1-params(1);
  g1(42,12)=(-(exp(y(12))/exp(y(13))));
  g1(42,13)=(-((-(exp(y(13))*exp(y(12))))/(exp(y(13))*exp(y(13)))));
  g1(42,31)=exp(y(31));
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],42,1764);
end
end

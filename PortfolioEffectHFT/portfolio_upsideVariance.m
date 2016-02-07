% Portfolio Upside Variance
%
% 
% Computes daily upside variance of a portfolio.
% 
% Usage
% 
% portfolio_upsideVariance(portfolio,thresholdReturn)
% 
%
% portfolio
%        Portfolio object created using portfolio_create( ) function
%
% thresholdReturn
%        Return value to be used as a cut-off point
%
% Return Value
% 
% Numeric vector of portfolio upside variance values.
%
% Description
% https://www.portfolioeffect.com/docs/glossary/measures/absolute-risk-measures/upside-variance
%  
% Note
%
% PortfolioEffect - Matlab Interface to Quant API
% 
% Copyright (C) 2010 - 2015 Snowfall Systems, Inc.
%
%
% Examples
% 
% data_goog=importdata('data_goog.mat'); 
% data_aapl=importdata('data_aapl.mat');  
% data_spy=importdata('data_spy.mat'); 
% portfolioExample=portfolio_create('priceDataIx',data_spy); 
% portfolio_addPosition(portfolioExample,'GOOG',100,'priceData',data_goog);
% portfolio_addPosition(portfolioExample,'AAPL',300,'priceData',data_aapl);
% portfolio_addPosition(portfolioExample,'SPY',150,'priceData',data_spy);
% portfolio_settings(portfolioExample,'portfolioMetricsMode','price','windowLength','3600s');
% util_plot2d(portfolio_upsideVariance(portfolioExample,0.05),'Portfolio Upside Variance')
% 
% dateStart = '2014-11-17 09:30:00';
% dateEnd = '2014-11-19 16:00:00';
% portfolioExample=portfolio_create('index','SPY','fromTime',dateStart ,'toTime',dateEnd );
% portfolio_addPosition(portfolioExample,'AAPL',100);
% portfolio_addPosition(portfolioExample,'C',300); 
% portfolio_addPosition(portfolioExample,'GOOG',150);
% util_plot2d(portfolio_upsideVariance(portfolioExample,0.05),'Portfolio Upside Variance')
function [portfolio_upsideVariance] = portfolio_upsideVariance(portfolio,thresholdReturn)
     portfolio_upsideVariance=position_metric(portfolio,'metric','PORTFOLIO_UPSIDE_VARIANCE','thresholdReturn',num2str(thresholdReturn));
end
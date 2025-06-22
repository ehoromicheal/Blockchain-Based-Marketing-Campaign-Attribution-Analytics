# Blockchain-Based Marketing Campaign Attribution Analytics

A comprehensive smart contract system built on Stacks blockchain for managing marketing campaign attribution, tracking, and optimization with transparent, immutable analytics.

## 🚀 Overview

This system provides a decentralized solution for marketing analytics, enabling transparent attribution modeling, campaign tracking, ROI calculations, and budget optimization through smart contracts.

## 📋 Features

### Core Contracts

1. **Marketing Analyst Verification** (`marketing-analyst-verification.clar`)
    - Verifies and manages marketing analyst credentials
    - Controls access to analytics functions
    - Maintains analyst certification records

2. **Attribution Modeling** (`attribution-modeling.clar`)
    - Creates custom attribution models (First Touch, Last Touch, Linear, Time Decay)
    - Calculates attribution across marketing touchpoints
    - Distributes conversion credit based on model type

3. **Campaign Tracking** (`campaign-tracking.clar`)
    - Tracks marketing campaign performance metrics
    - Records touchpoint interactions
    - Manages campaign lifecycle and status

4. **ROI Calculation** (`roi-calculation.clar`)
    - Calculates return on investment for individual campaigns
    - Supports multi-campaign ROI analysis
    - Provides ROAS (Return on Ad Spend) calculations

5. **Budget Optimization** (`budget-optimization.clar`)
    - Optimizes budget allocation across campaigns
    - Predicts campaign performance
    - Supports multiple optimization strategies

## 🛠 Installation

### Prerequisites
- Stacks CLI
- Clarinet (for local development)
- Node.js (for testing)

### Setup

1. Clone the repository:
   \`\`\`bash
   git clone <repository-url>
   cd blockchain-marketing-attribution
   \`\`\`

2. Install dependencies:
   \`\`\`bash
   npm install
   \`\`\`

3. Deploy contracts:
   \`\`\`bash
   clarinet deploy
   \`\`\`

## 📊 Usage Examples

### 1. Verify Marketing Analyst

\`\`\`clarity
(contract-call? .marketing-analyst-verification verify-analyst
'SP1ANALYST123
"John Doe"
"Google Analytics Certified")
\`\`\`

### 2. Create Attribution Model

\`\`\`clarity
(contract-call? .attribution-modeling create-attribution-model
u3  ;; Linear model
"Linear Attribution"
(list u10 u10 u10 u10 u10 u10 u10 u10 u10 u10))
\`\`\`

### 3. Track Campaign

\`\`\`clarity
(contract-call? .campaign-tracking create-campaign
"Summer Sale 2024"
"Google Ads"
u1640995200  ;; Start date
u1643673600  ;; End date
u50000)      ;; Budget in micro-STX
\`\`\`

### 4. Calculate ROI

\`\`\`clarity
(contract-call? .roi-calculation calculate-campaign-roi u1)
\`\`\`

### 5. Optimize Budget

\`\`\`clarity
(contract-call? .budget-optimization optimize-budget-allocation
u100000  ;; Total budget
(list {campaign-id: u1, historical-roi: u150, risk-score: u3})
u1)      ;; ROI maximization strategy
\`\`\`

## 🧪 Testing

Run the test suite:

\`\`\`bash
npm test
\`\`\`

Tests cover:
- Contract deployment and initialization
- Analyst verification workflows
- Attribution model creation and calculation
- Campaign tracking and metrics updates
- ROI calculations and multi-campaign analysis
- Budget optimization strategies

## 📈 Attribution Models

### Supported Models

1. **First Touch** (`u1`): 100% credit to first interaction
2. **Last Touch** (`u2`): 100% credit to last interaction
3. **Linear** (`u3`): Equal credit distribution
4. **Time Decay** (`u4`): More credit to recent interactions

### Custom Models

Create custom attribution models with specific weight distributions:

\`\`\`clarity
(contract-call? .attribution-modeling create-attribution-model
u3
"Custom Linear"
(list u5 u10 u15 u20 u25 u25))
\`\`\`

## 💰 Budget Optimization Strategies

### Available Strategies

1. **ROI Maximization** (`u1`): Allocate based on historical ROI
2. **Risk Balanced** (`u2`): Balance ROI with risk scores
3. **Diversified** (`u3`): Equal distribution across campaigns

### Performance Prediction

The system predicts campaign performance based on:
- Historical metrics
- Budget multipliers
- Confidence scores
- Risk assessments

## 🔒 Security Features

- **Access Control**: Only verified analysts can execute functions
- **Data Integrity**: Immutable record keeping on blockchain
- **Transparent Calculations**: All ROI and attribution calculations are auditable
- **Permission Management**: Contract owner controls analyst verification

## 🌐 Integration

### API Endpoints

The contracts can be integrated with:
- Marketing automation platforms
- Analytics dashboards
- Budget management tools
- Attribution reporting systems

### Data Export

All data is stored on-chain and can be queried using:
- Stacks API
- Custom indexing solutions
- Direct contract calls

## 📝 Contract Addresses

After deployment, update with actual contract addresses:

- Marketing Analyst Verification: `SP...`
- Attribution Modeling: `SP...`
- Campaign Tracking: `SP...`
- ROI Calculation: `SP...`
- Budget Optimization: `SP...`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Write tests for new functionality
4. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For support and questions:
- Create an issue in the repository
- Contact the development team
- Check the documentation wiki

## 🔄 Roadmap

- [ ] Advanced attribution models (Shapley value, Markov chains)
- [ ] Real-time budget rebalancing
- [ ] Integration with major ad platforms
- [ ] Advanced analytics dashboard
- [ ] Multi-chain support
- [ ] Machine learning predictions
  \`\`\`

